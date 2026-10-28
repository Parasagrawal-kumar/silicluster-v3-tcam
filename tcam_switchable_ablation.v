//=====================================================================
// tcam_switchable_ablation
// 8-entry x 4-bit ternary CAM with a runtime-selectable access schedule
//   mode = 0 : single-phase (P=1). Every clock cycle is an access slot.
//   mode = 1 : two-phase    (P=2). Memory is split into two sub-blocks
//              (entries 0-3 = sub-block 0, entries 4-7 = sub-block 1).
//              A mod-2 phase counter (pump_phase) schedules the access
//              slots; writes go to sub-block k only in phase k, and
//              searches complete only on phase-1 slots.
// The compare array and priority encoder are shared by both modes.
// pump_activity = {mode_synchronized, pump_phase} is brought out so the
// active mode and the phase toggling can be observed externally.
//
// Silicluster v3 / SKY130 / Verilog-2001, 10 MHz max.
// Pins: clk, rst (active-high, async) + 9 general inputs, 8 outputs.
//
// Write: shift a 12-bit frame {waddr[3:0], wdata[3:0], wmask[3:0]}
//        MSB first with serial_clk_en=1 (one bit per clk), then pulse
//        load_en for one clk. waddr[3] is ignored (8 entries).
//        wmask bit = 1 means "don't care" for that bit position.
// Search: put the key on search_key, pulse search_en for one clk.
//        search_done pulses for one clk when the result is ready;
//        match_valid / match_addr hold the result until the next search.
//        Lowest matching address wins. Unwritten entries never match.
// Change `mode` only while the device is idle.
//=====================================================================
`timescale 1ns/1ps

module tcam_switchable_ablation (
    input  wire       clk,
    input  wire       rst,

    input  wire       mode,           // 0 = P=1, 1 = P=2
    input  wire       serial_in,
    input  wire       serial_clk_en,
    input  wire       load_en,
    input  wire       search_en,
    input  wire [3:0] search_key,

    output wire [2:0] match_addr,
    output wire       match_valid,
    output wire       search_done,
    output wire       shift_done,
    output wire [1:0] pump_activity
);

    localparam W = 4;
    localparam D = 8;

    //-----------------------------------------------------------------
    // Mode synchronizer (mode is an asynchronous external input)
    //-----------------------------------------------------------------
    reg mode_s1, mode_s2;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            mode_s1 <= 1'b0;
            mode_s2 <= 1'b0;
        end else begin
            mode_s1 <= mode;
            mode_s2 <= mode_s1;
        end
    end
    wire mode_q = mode_s2;

    //-----------------------------------------------------------------
    // Mod-2 phase counter and access-slot enable
    //-----------------------------------------------------------------
    reg pump_phase;
    always @(posedge clk or posedge rst) begin
        if (rst)         pump_phase <= 1'b0;
        else if (mode_q) pump_phase <= ~pump_phase;
        else             pump_phase <= 1'b0;
    end
    wire clkP_en = ~mode_q | pump_phase;

    assign pump_activity = {mode_q, pump_phase};

    //-----------------------------------------------------------------
    // Serial write-frame shift register
    //-----------------------------------------------------------------
    reg [11:0] shift_reg;
    reg [3:0]  bit_cnt;
    reg        shift_done_r;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            shift_reg    <= 12'd0;
            bit_cnt      <= 4'd0;
            shift_done_r <= 1'b0;
        end else begin
            shift_done_r <= 1'b0;
            if (serial_clk_en) begin
                shift_reg <= {shift_reg[10:0], serial_in};
                if (bit_cnt == 4'd11) begin
                    bit_cnt      <= 4'd0;
                    shift_done_r <= 1'b1;
                end else begin
                    bit_cnt <= bit_cnt + 4'd1;
                end
            end
        end
    end
    assign shift_done = shift_done_r;

    wire [3:0] s_waddr = shift_reg[11:8];
    wire [3:0] s_wdata = shift_reg[7:4];
    wire [3:0] s_wmask = shift_reg[3:0];

    //-----------------------------------------------------------------
    // Write control (uses the address carried in the frame)
    //-----------------------------------------------------------------
    reg         wr_pending;
    reg [2:0]   wr_addr_lat;
    reg [W-1:0] wr_data_lat;
    reg [W-1:0] wr_mask_lat;
    reg [D-1:0] valid;

    // mode 0: write on the next clock. mode 1: wait for the phase that
    // belongs to the addressed sub-block (addr[2] = sub-block index).
    wire wr_go = ~mode_q | (pump_phase == wr_addr_lat[2]);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            wr_pending  <= 1'b0;
            wr_addr_lat <= 3'd0;
            wr_data_lat <= {W{1'b0}};
            wr_mask_lat <= {W{1'b0}};
            valid       <= {D{1'b0}};
        end else begin
            if (!wr_pending) begin
                if (load_en) begin
                    wr_addr_lat <= s_waddr[2:0];
                    wr_data_lat <= s_wdata;
                    wr_mask_lat <= s_wmask;
                    wr_pending  <= 1'b1;
                end
            end else if (wr_go) begin
                valid[wr_addr_lat] <= 1'b1;
                wr_pending         <= 1'b0;
            end
        end
    end

    // Storage (no reset; "valid" masks unwritten entries)
    reg [W*D-1:0] data_flat;
    reg [W*D-1:0] mask_flat;
    always @(posedge clk) begin
        if (wr_pending && wr_go) begin
            data_flat[wr_addr_lat*W +: W] <= wr_data_lat;
            mask_flat[wr_addr_lat*W +: W] <= wr_mask_lat;
        end
    end

    //-----------------------------------------------------------------
    // Search request capture
    //-----------------------------------------------------------------
    reg         req_pending;
    reg [W-1:0] key_lat;
    reg [2:0]   match_addr_r;
    reg         match_valid_r;
    reg         search_done_r;

    reg [D-1:0] word_match;
    reg [2:0]   prio_addr;
    reg         prio_valid;
    reg         found;
    integer s, b, i;

    // Ternary compare of the latched key against every entry
    always @(*) begin
        for (s = 0; s < D; s = s + 1) begin
            word_match[s] = valid[s];
            for (b = 0; b < W; b = b + 1) begin
                word_match[s] = word_match[s] &
                    ( mask_flat[s*W + b] | ~(data_flat[s*W + b] ^ key_lat[b]) );
            end
        end
    end

    // Lowest-address priority
    always @(*) begin
        prio_addr  = 3'd0;
        prio_valid = 1'b0;
        found      = 1'b0;
        for (i = 0; i < D; i = i + 1) begin
            if (word_match[i] && !found) begin
                found      = 1'b1;
                prio_valid = 1'b1;
                prio_addr  = i[2:0];
            end
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            req_pending   <= 1'b0;
            key_lat       <= {W{1'b0}};
            match_addr_r  <= 3'd0;
            match_valid_r <= 1'b0;
            search_done_r <= 1'b0;
        end else begin
            search_done_r <= 1'b0;
            if (search_en && !req_pending) begin
                req_pending   <= 1'b1;
                key_lat       <= search_key;
                match_valid_r <= 1'b0;
            end else if (req_pending && clkP_en) begin
                req_pending   <= 1'b0;
                search_done_r <= 1'b1;
                match_valid_r <= prio_valid;
                match_addr_r  <= prio_addr;
            end
        end
    end

    assign match_addr  = match_addr_r;
    assign match_valid = match_valid_r;
    assign search_done = search_done_r;

endmodule
