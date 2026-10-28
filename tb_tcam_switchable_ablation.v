//=====================================================================
// Self-checking testbench (plain Verilog-2001, no $fatal / SV).
// Runs the same write/search suite in mode 0 (P=1) and mode 1 (P=2),
// compares every result with a behavioural reference model, checks the
// pump_activity signature, then switches mode at run time WITHOUT reset
// and confirms stored contents are still searched correctly.
// Prints "ALL TESTS PASSED" only if errors == 0.
//=====================================================================
`timescale 1ns/1ps

module tb_tcam_switchable_ablation;

    reg        clk, rst, mode;
    reg        serial_in, serial_clk_en, load_en, search_en;
    reg  [3:0] search_key;
    wire [2:0] match_addr;
    wire       match_valid, search_done, shift_done;
    wire [1:0] pump_activity;

    integer errors;

    tcam_switchable_ablation dut (
        .clk(clk), .rst(rst), .mode(mode),
        .serial_in(serial_in), .serial_clk_en(serial_clk_en),
        .load_en(load_en), .search_en(search_en), .search_key(search_key),
        .match_addr(match_addr), .match_valid(match_valid),
        .search_done(search_done), .shift_done(shift_done),
        .pump_activity(pump_activity)
    );

    initial clk = 1'b0;
    always #50 clk = ~clk;          // 10 MHz

    //------------------------------------------------------------------
    // Reference model
    //------------------------------------------------------------------
    reg [3:0] ref_data  [0:7];
    reg [3:0] ref_mask  [0:7];
    reg       ref_valid [0:7];

    function ref_hit;               // does entry e match key?
        input [2:0] e;
        input [3:0] key;
        integer kb;
        reg ok;
        begin
            ok = ref_valid[e];
            for (kb = 0; kb < 4; kb = kb + 1)
                ok = ok & (ref_mask[e][kb] | ~(ref_data[e][kb] ^ key[kb]));
            ref_hit = ok;
        end
    endfunction

    //------------------------------------------------------------------
    // Tasks. Inputs change 1 ns after a clock edge.
    //------------------------------------------------------------------
    task do_write;
        input [3:0] addr;
        input [3:0] data;
        input [3:0] mask;
        reg [11:0] frame;
        integer n;
        begin
            frame = {addr, data, mask};
            for (n = 11; n >= 0; n = n - 1) begin
                serial_in     = frame[n];
                serial_clk_en = 1'b1;
                @(posedge clk); #1;
            end
            serial_clk_en = 1'b0;
            serial_in     = 1'b0;
            load_en = 1'b1;
            @(posedge clk); #1;
            load_en = 1'b0;
            repeat (4) begin @(posedge clk); #1; end
            ref_data [addr[2:0]] = data;
            ref_mask [addr[2:0]] = mask;
            ref_valid[addr[2:0]] = 1'b1;
        end
    endtask

    task do_search;
        input [3:0] key;
        reg        exp_v;
        reg [2:0]  exp_a;
        integer    e, t, done_cnt;
        begin
            exp_v = 1'b0;
            exp_a = 3'd0;
            for (e = 7; e >= 0; e = e - 1)
                if (ref_hit(e[2:0], key)) begin
                    exp_v = 1'b1;
                    exp_a = e[2:0];
                end

            search_key = key;
            search_en  = 1'b1;
            @(posedge clk); #1;
            search_en  = 1'b0;

            t = 0;
            done_cnt = 0;
            while (!search_done && t < 10) begin
                @(posedge clk); #1;
                t = t + 1;
            end
            if (!search_done) begin
                $display("FAIL [mode=%b]: key=%h search never completed", mode, key);
                errors = errors + 1;
            end else begin
                if (match_valid !== exp_v || (exp_v && match_addr !== exp_a)) begin
                    $display("FAIL [mode=%b]: key=%h exp=%0d/%b got=%0d/%b",
                             mode, key, exp_a, exp_v, match_addr, match_valid);
                    errors = errors + 1;
                end else
                    $display("PASS [mode=%b]: key=%h -> addr=%0d valid=%b (%0d clk)",
                             mode, key, match_addr, match_valid, t + 1);
                // search_done must be a single-cycle pulse
                @(posedge clk); #1;
                if (search_done) begin
                    $display("FAIL [mode=%b]: search_done longer than 1 clk", mode);
                    errors = errors + 1;
                end
            end
        end
    endtask

    task check_pump;
        input m;
        integer c;
        reg saw_phase0, saw_phase1, bad;
        begin
            saw_phase0 = 1'b0; saw_phase1 = 1'b0; bad = 1'b0;
            for (c = 0; c < 8; c = c + 1) begin
                @(posedge clk); #1;
                if (pump_activity[1] !== m) bad = 1'b1;
                if (pump_activity[0] === 1'b0) saw_phase0 = 1'b1;
                if (pump_activity[0] === 1'b1) saw_phase1 = 1'b1;
            end
            if (m == 1'b0) begin
                if (bad || saw_phase1) begin
                    $display("FAIL [mode=0]: pump_activity should stay 00");
                    errors = errors + 1;
                end else
                    $display("PASS [mode=0]: pump_activity stayed 00");
            end else begin
                if (bad || !saw_phase0 || !saw_phase1) begin
                    $display("FAIL [mode=1]: pump_activity should toggle 10/11");
                    errors = errors + 1;
                end else
                    $display("PASS [mode=1]: pump_activity toggled 10/11");
            end
        end
    endtask

    task clear_ref;
        integer q;
        begin
            for (q = 0; q < 8; q = q + 1) begin
                ref_data[q] = 4'd0; ref_mask[q] = 4'd0; ref_valid[q] = 1'b0;
            end
        end
    endtask

    task search_set;
        begin
            do_search(4'hA);   // exact, entry 0
            do_search(4'h5);   // exact, entry 2
            do_search(4'hF);   // entries 4 (wildcard) and 5 -> lowest = 4
            do_search(4'hC);   // wildcard entry 4
            do_search(4'h3);   // entries 1 and 3 -> lowest = 1
            do_search(4'h0);   // no match
            do_search(4'h7);   // 0111 -> entry 7 (sub-block 1 wildcard)
            do_search(4'h9);   // entry 6 exact (sub-block 1)
            do_search(4'hE);   // 1110 -> entry 4 (11xx)
            do_search(4'h1);   // no match
        end
    endtask

    task set_mode_and_reset;
        input m;
        begin
            mode = m;
            rst  = 1'b1;
            repeat (2) begin @(posedge clk); #1; end
            rst  = 1'b0;
            repeat (4) begin @(posedge clk); #1; end   // synchronizer settles
            clear_ref;
        end
    endtask

    task run_suite;
        input m;
        begin
            $display("\n=== MODE %0d (%s) ===", m, m ? "P=2 two-phase" : "P=1 single-phase");
            set_mode_and_reset(m);
            check_pump(m);

            do_write(4'd0, 4'hA, 4'h0);
            do_write(4'd2, 4'h5, 4'h0);
            do_write(4'd5, 4'hF, 4'h0);
            do_write(4'd4, 4'hF, 4'h3);    // 11xx
            do_write(4'd1, 4'h3, 4'h0);
            do_write(4'd3, 4'h3, 4'h0);    // duplicate of entry 1
            do_write(4'd6, 4'h9, 4'h0);    // sub-block 1
            do_write(4'd7, 4'h6, 4'h1);    // 011x (sub-block 1, wildcard bit 0)
            search_set;
        end
    endtask

    integer t0;
    initial begin
        $dumpfile("tb_tcam_switchable_ablation.vcd");
        $dumpvars(0, tb_tcam_switchable_ablation);

        errors = 0;
        rst = 1'b1; mode = 1'b0;
        serial_in = 1'b0; serial_clk_en = 1'b0; load_en = 1'b0;
        search_en = 1'b0; search_key = 4'd0;
        clear_ref;
        repeat (3) begin @(posedge clk); #1; end
        rst = 1'b0;
        repeat (2) begin @(posedge clk); #1; end

        run_suite(1'b0);
        run_suite(1'b1);

        // Runtime switch, no reset: contents must survive
        $display("\n=== RUNTIME SWITCH 1 -> 0 (no reset) ===");
        mode = 1'b0;
        repeat (4) begin @(posedge clk); #1; end
        check_pump(1'b0);
        search_set;

        $display("\n=== RUNTIME SWITCH 0 -> 1 (no reset) ===");
        mode = 1'b1;
        repeat (4) begin @(posedge clk); #1; end
        check_pump(1'b1);
        search_set;

        if (errors == 0) $display("\nALL TESTS PASSED");
        else             $display("\nTESTS FAILED: %0d error(s)", errors);
        $finish;
    end

    initial begin
        #5000000;
        $display("ERROR: testbench timeout");
        $finish;
    end

endmodule
