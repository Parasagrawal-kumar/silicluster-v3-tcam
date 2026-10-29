module tcam_switchable_ablation (clk,
    load_en,
    match_valid,
    mode,
    rst,
    search_done,
    search_en,
    serial_clk_en,
    serial_in,
    shift_done,
    match_addr,
    pump_activity,
    search_key);
 input clk;
 input load_en;
 output match_valid;
 input mode;
 input rst;
 output search_done;
 input search_en;
 input serial_clk_en;
 input serial_in;
 output shift_done;
 output [2:0] match_addr;
 output [1:0] pump_activity;
 input [3:0] search_key;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire \bit_cnt[0] ;
 wire \bit_cnt[1] ;
 wire \bit_cnt[2] ;
 wire \bit_cnt[3] ;
 wire \data_flat[0] ;
 wire \data_flat[10] ;
 wire \data_flat[11] ;
 wire \data_flat[12] ;
 wire \data_flat[13] ;
 wire \data_flat[14] ;
 wire \data_flat[15] ;
 wire \data_flat[16] ;
 wire \data_flat[17] ;
 wire \data_flat[18] ;
 wire \data_flat[19] ;
 wire \data_flat[1] ;
 wire \data_flat[20] ;
 wire \data_flat[21] ;
 wire \data_flat[22] ;
 wire \data_flat[23] ;
 wire \data_flat[24] ;
 wire \data_flat[25] ;
 wire \data_flat[26] ;
 wire \data_flat[27] ;
 wire \data_flat[28] ;
 wire \data_flat[29] ;
 wire \data_flat[2] ;
 wire \data_flat[30] ;
 wire \data_flat[31] ;
 wire \data_flat[3] ;
 wire \data_flat[4] ;
 wire \data_flat[5] ;
 wire \data_flat[6] ;
 wire \data_flat[7] ;
 wire \data_flat[8] ;
 wire \data_flat[9] ;
 wire \key_lat[0] ;
 wire \key_lat[1] ;
 wire \key_lat[2] ;
 wire \key_lat[3] ;
 wire \mask_flat[0] ;
 wire \mask_flat[10] ;
 wire \mask_flat[11] ;
 wire \mask_flat[12] ;
 wire \mask_flat[13] ;
 wire \mask_flat[14] ;
 wire \mask_flat[15] ;
 wire \mask_flat[16] ;
 wire \mask_flat[17] ;
 wire \mask_flat[18] ;
 wire \mask_flat[19] ;
 wire \mask_flat[1] ;
 wire \mask_flat[20] ;
 wire \mask_flat[21] ;
 wire \mask_flat[22] ;
 wire \mask_flat[23] ;
 wire \mask_flat[24] ;
 wire \mask_flat[25] ;
 wire \mask_flat[26] ;
 wire \mask_flat[27] ;
 wire \mask_flat[28] ;
 wire \mask_flat[29] ;
 wire \mask_flat[2] ;
 wire \mask_flat[30] ;
 wire \mask_flat[31] ;
 wire \mask_flat[3] ;
 wire \mask_flat[4] ;
 wire \mask_flat[5] ;
 wire \mask_flat[6] ;
 wire \mask_flat[7] ;
 wire \mask_flat[8] ;
 wire \mask_flat[9] ;
 wire mode_q;
 wire mode_s1;
 wire pump_phase;
 wire req_pending;
 wire \s_waddr[0] ;
 wire \s_waddr[1] ;
 wire \s_waddr[2] ;
 wire \s_wdata[0] ;
 wire \s_wdata[1] ;
 wire \s_wdata[2] ;
 wire \s_wdata[3] ;
 wire \s_wmask[0] ;
 wire \s_wmask[1] ;
 wire \s_wmask[2] ;
 wire \s_wmask[3] ;
 wire \valid[0] ;
 wire \valid[1] ;
 wire \valid[2] ;
 wire \valid[3] ;
 wire \valid[4] ;
 wire \valid[5] ;
 wire \valid[6] ;
 wire \valid[7] ;
 wire \wr_addr_lat[0] ;
 wire \wr_addr_lat[1] ;
 wire \wr_addr_lat[2] ;
 wire \wr_data_lat[0] ;
 wire \wr_data_lat[1] ;
 wire \wr_data_lat[2] ;
 wire \wr_data_lat[3] ;
 wire \wr_mask_lat[0] ;
 wire \wr_mask_lat[1] ;
 wire \wr_mask_lat[2] ;
 wire \wr_mask_lat[3] ;
 wire wr_pending;

 sky130_fd_sc_hd__inv_1 _210_ (.A(\bit_cnt[3] ),
    .Y(_104_));
 sky130_fd_sc_hd__inv_1 _211_ (.A(rst),
    .Y(_004_));
 sky130_fd_sc_hd__xnor2_1 _212_ (.A(\key_lat[2] ),
    .B(\data_flat[30] ),
    .Y(_105_));
 sky130_fd_sc_hd__o21ai_0 _213_ (.A1(\mask_flat[30] ),
    .A2(_105_),
    .B1(\valid[7] ),
    .Y(_106_));
 sky130_fd_sc_hd__a21oi_1 _214_ (.A1(\key_lat[3] ),
    .A2(\data_flat[31] ),
    .B1(\mask_flat[31] ),
    .Y(_107_));
 sky130_fd_sc_hd__o21ai_0 _215_ (.A1(\key_lat[3] ),
    .A2(\data_flat[31] ),
    .B1(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__a21oi_1 _216_ (.A1(\key_lat[1] ),
    .A2(\data_flat[29] ),
    .B1(\mask_flat[29] ),
    .Y(_109_));
 sky130_fd_sc_hd__o21ai_0 _217_ (.A1(\key_lat[1] ),
    .A2(\data_flat[29] ),
    .B1(_109_),
    .Y(_110_));
 sky130_fd_sc_hd__a21oi_1 _218_ (.A1(\key_lat[0] ),
    .A2(\data_flat[28] ),
    .B1(\mask_flat[28] ),
    .Y(_111_));
 sky130_fd_sc_hd__o21ai_0 _219_ (.A1(\key_lat[0] ),
    .A2(\data_flat[28] ),
    .B1(_111_),
    .Y(_112_));
 sky130_fd_sc_hd__nand3_1 _220_ (.A(_108_),
    .B(_110_),
    .C(_112_),
    .Y(_113_));
 sky130_fd_sc_hd__nor2_1 _221_ (.A(_106_),
    .B(_113_),
    .Y(_114_));
 sky130_fd_sc_hd__xnor2_1 _222_ (.A(\key_lat[2] ),
    .B(\data_flat[18] ),
    .Y(_115_));
 sky130_fd_sc_hd__o21ai_0 _223_ (.A1(\mask_flat[18] ),
    .A2(_115_),
    .B1(\valid[4] ),
    .Y(_116_));
 sky130_fd_sc_hd__a21oi_1 _224_ (.A1(\key_lat[3] ),
    .A2(\data_flat[19] ),
    .B1(\mask_flat[19] ),
    .Y(_117_));
 sky130_fd_sc_hd__o21ai_0 _225_ (.A1(\key_lat[3] ),
    .A2(\data_flat[19] ),
    .B1(_117_),
    .Y(_118_));
 sky130_fd_sc_hd__a21oi_1 _226_ (.A1(\key_lat[1] ),
    .A2(\data_flat[17] ),
    .B1(\mask_flat[17] ),
    .Y(_119_));
 sky130_fd_sc_hd__o21ai_0 _227_ (.A1(\key_lat[1] ),
    .A2(\data_flat[17] ),
    .B1(_119_),
    .Y(_120_));
 sky130_fd_sc_hd__a21oi_1 _228_ (.A1(\key_lat[0] ),
    .A2(\data_flat[16] ),
    .B1(\mask_flat[16] ),
    .Y(_121_));
 sky130_fd_sc_hd__o21ai_0 _229_ (.A1(\key_lat[0] ),
    .A2(\data_flat[16] ),
    .B1(_121_),
    .Y(_122_));
 sky130_fd_sc_hd__and4b_1 _230_ (.A_N(_116_),
    .B(_118_),
    .C(_120_),
    .D(_122_),
    .X(_123_));
 sky130_fd_sc_hd__xnor2_1 _231_ (.A(\key_lat[2] ),
    .B(\data_flat[22] ),
    .Y(_124_));
 sky130_fd_sc_hd__o21ai_0 _232_ (.A1(\mask_flat[22] ),
    .A2(_124_),
    .B1(\valid[5] ),
    .Y(_125_));
 sky130_fd_sc_hd__a21oi_1 _233_ (.A1(\key_lat[3] ),
    .A2(\data_flat[23] ),
    .B1(\mask_flat[23] ),
    .Y(_126_));
 sky130_fd_sc_hd__o21ai_0 _234_ (.A1(\key_lat[3] ),
    .A2(\data_flat[23] ),
    .B1(_126_),
    .Y(_127_));
 sky130_fd_sc_hd__a21oi_1 _235_ (.A1(\key_lat[1] ),
    .A2(\data_flat[21] ),
    .B1(\mask_flat[21] ),
    .Y(_128_));
 sky130_fd_sc_hd__o21ai_0 _236_ (.A1(\key_lat[1] ),
    .A2(\data_flat[21] ),
    .B1(_128_),
    .Y(_129_));
 sky130_fd_sc_hd__a21oi_1 _237_ (.A1(\key_lat[0] ),
    .A2(\data_flat[20] ),
    .B1(\mask_flat[20] ),
    .Y(_130_));
 sky130_fd_sc_hd__o21ai_0 _238_ (.A1(\key_lat[0] ),
    .A2(\data_flat[20] ),
    .B1(_130_),
    .Y(_131_));
 sky130_fd_sc_hd__and4b_1 _239_ (.A_N(_125_),
    .B(_127_),
    .C(_129_),
    .D(_131_),
    .X(_132_));
 sky130_fd_sc_hd__xnor2_1 _240_ (.A(\key_lat[2] ),
    .B(\data_flat[26] ),
    .Y(_133_));
 sky130_fd_sc_hd__o21ai_0 _241_ (.A1(\mask_flat[26] ),
    .A2(_133_),
    .B1(\valid[6] ),
    .Y(_134_));
 sky130_fd_sc_hd__a21oi_1 _242_ (.A1(\key_lat[3] ),
    .A2(\data_flat[27] ),
    .B1(\mask_flat[27] ),
    .Y(_135_));
 sky130_fd_sc_hd__o21ai_0 _243_ (.A1(\key_lat[3] ),
    .A2(\data_flat[27] ),
    .B1(_135_),
    .Y(_136_));
 sky130_fd_sc_hd__a21oi_1 _244_ (.A1(\key_lat[1] ),
    .A2(\data_flat[25] ),
    .B1(\mask_flat[25] ),
    .Y(_137_));
 sky130_fd_sc_hd__o21ai_0 _245_ (.A1(\key_lat[1] ),
    .A2(\data_flat[25] ),
    .B1(_137_),
    .Y(_138_));
 sky130_fd_sc_hd__a21oi_1 _246_ (.A1(\key_lat[0] ),
    .A2(\data_flat[24] ),
    .B1(\mask_flat[24] ),
    .Y(_139_));
 sky130_fd_sc_hd__o21ai_0 _247_ (.A1(\key_lat[0] ),
    .A2(\data_flat[24] ),
    .B1(_139_),
    .Y(_140_));
 sky130_fd_sc_hd__and4b_1 _248_ (.A_N(_134_),
    .B(_136_),
    .C(_138_),
    .D(_140_),
    .X(_141_));
 sky130_fd_sc_hd__nor3_1 _249_ (.A(_123_),
    .B(_132_),
    .C(_141_),
    .Y(_142_));
 sky130_fd_sc_hd__nor2b_1 _250_ (.A(_114_),
    .B_N(_142_),
    .Y(_143_));
 sky130_fd_sc_hd__nand2b_1 _251_ (.A_N(pump_phase),
    .B(mode_q),
    .Y(_144_));
 sky130_fd_sc_hd__inv_1 _252_ (.A(_144_),
    .Y(_000_));
 sky130_fd_sc_hd__nand2_1 _253_ (.A(req_pending),
    .B(_144_),
    .Y(_145_));
 sky130_fd_sc_hd__inv_1 _254_ (.A(_145_),
    .Y(_001_));
 sky130_fd_sc_hd__xnor2_1 _255_ (.A(\key_lat[2] ),
    .B(\data_flat[10] ),
    .Y(_146_));
 sky130_fd_sc_hd__o21ai_0 _256_ (.A1(\mask_flat[10] ),
    .A2(_146_),
    .B1(\valid[2] ),
    .Y(_147_));
 sky130_fd_sc_hd__a21oi_1 _257_ (.A1(\key_lat[3] ),
    .A2(\data_flat[11] ),
    .B1(\mask_flat[11] ),
    .Y(_148_));
 sky130_fd_sc_hd__o21ai_0 _258_ (.A1(\key_lat[3] ),
    .A2(\data_flat[11] ),
    .B1(_148_),
    .Y(_149_));
 sky130_fd_sc_hd__a21oi_1 _259_ (.A1(\key_lat[1] ),
    .A2(\data_flat[9] ),
    .B1(\mask_flat[9] ),
    .Y(_150_));
 sky130_fd_sc_hd__o21ai_0 _260_ (.A1(\key_lat[1] ),
    .A2(\data_flat[9] ),
    .B1(_150_),
    .Y(_151_));
 sky130_fd_sc_hd__a21oi_1 _261_ (.A1(\key_lat[0] ),
    .A2(\data_flat[8] ),
    .B1(\mask_flat[8] ),
    .Y(_152_));
 sky130_fd_sc_hd__o21ai_0 _262_ (.A1(\key_lat[0] ),
    .A2(\data_flat[8] ),
    .B1(_152_),
    .Y(_153_));
 sky130_fd_sc_hd__and4b_1 _263_ (.A_N(_147_),
    .B(_149_),
    .C(_151_),
    .D(_153_),
    .X(_154_));
 sky130_fd_sc_hd__xnor2_1 _264_ (.A(\key_lat[2] ),
    .B(\data_flat[14] ),
    .Y(_155_));
 sky130_fd_sc_hd__o21ai_0 _265_ (.A1(\mask_flat[14] ),
    .A2(_155_),
    .B1(\valid[3] ),
    .Y(_156_));
 sky130_fd_sc_hd__a21oi_1 _266_ (.A1(\key_lat[3] ),
    .A2(\data_flat[15] ),
    .B1(\mask_flat[15] ),
    .Y(_157_));
 sky130_fd_sc_hd__o21ai_0 _267_ (.A1(\key_lat[3] ),
    .A2(\data_flat[15] ),
    .B1(_157_),
    .Y(_158_));
 sky130_fd_sc_hd__a21oi_1 _268_ (.A1(\key_lat[1] ),
    .A2(\data_flat[13] ),
    .B1(\mask_flat[13] ),
    .Y(_159_));
 sky130_fd_sc_hd__o21ai_0 _269_ (.A1(\key_lat[1] ),
    .A2(\data_flat[13] ),
    .B1(_159_),
    .Y(_160_));
 sky130_fd_sc_hd__a21oi_1 _270_ (.A1(\key_lat[0] ),
    .A2(\data_flat[12] ),
    .B1(\mask_flat[12] ),
    .Y(_161_));
 sky130_fd_sc_hd__o21ai_0 _271_ (.A1(\key_lat[0] ),
    .A2(\data_flat[12] ),
    .B1(_161_),
    .Y(_162_));
 sky130_fd_sc_hd__and4b_1 _272_ (.A_N(_156_),
    .B(_158_),
    .C(_160_),
    .D(_162_),
    .X(_163_));
 sky130_fd_sc_hd__xnor2_1 _273_ (.A(\key_lat[0] ),
    .B(\data_flat[0] ),
    .Y(_164_));
 sky130_fd_sc_hd__o21ai_0 _274_ (.A1(\mask_flat[0] ),
    .A2(_164_),
    .B1(\valid[0] ),
    .Y(_165_));
 sky130_fd_sc_hd__a21oi_1 _275_ (.A1(\key_lat[1] ),
    .A2(\data_flat[1] ),
    .B1(\mask_flat[1] ),
    .Y(_166_));
 sky130_fd_sc_hd__o21ai_0 _276_ (.A1(\key_lat[1] ),
    .A2(\data_flat[1] ),
    .B1(_166_),
    .Y(_167_));
 sky130_fd_sc_hd__a21oi_1 _277_ (.A1(\key_lat[2] ),
    .A2(\data_flat[2] ),
    .B1(\mask_flat[2] ),
    .Y(_168_));
 sky130_fd_sc_hd__o21ai_0 _278_ (.A1(\key_lat[2] ),
    .A2(\data_flat[2] ),
    .B1(_168_),
    .Y(_169_));
 sky130_fd_sc_hd__a21oi_1 _279_ (.A1(\key_lat[3] ),
    .A2(\data_flat[3] ),
    .B1(\mask_flat[3] ),
    .Y(_170_));
 sky130_fd_sc_hd__o21ai_0 _280_ (.A1(\key_lat[3] ),
    .A2(\data_flat[3] ),
    .B1(_170_),
    .Y(_171_));
 sky130_fd_sc_hd__and4b_1 _281_ (.A_N(_165_),
    .B(_167_),
    .C(_169_),
    .D(_171_),
    .X(_172_));
 sky130_fd_sc_hd__xnor2_1 _282_ (.A(\key_lat[0] ),
    .B(\data_flat[4] ),
    .Y(_173_));
 sky130_fd_sc_hd__o21ai_0 _283_ (.A1(\mask_flat[4] ),
    .A2(_173_),
    .B1(\valid[1] ),
    .Y(_174_));
 sky130_fd_sc_hd__a21oi_1 _284_ (.A1(\key_lat[2] ),
    .A2(\data_flat[6] ),
    .B1(\mask_flat[6] ),
    .Y(_175_));
 sky130_fd_sc_hd__o21ai_0 _285_ (.A1(\key_lat[2] ),
    .A2(\data_flat[6] ),
    .B1(_175_),
    .Y(_176_));
 sky130_fd_sc_hd__a21oi_1 _286_ (.A1(\key_lat[1] ),
    .A2(\data_flat[5] ),
    .B1(\mask_flat[5] ),
    .Y(_177_));
 sky130_fd_sc_hd__o21ai_0 _287_ (.A1(\key_lat[1] ),
    .A2(\data_flat[5] ),
    .B1(_177_),
    .Y(_178_));
 sky130_fd_sc_hd__a21oi_1 _288_ (.A1(\key_lat[3] ),
    .A2(\data_flat[7] ),
    .B1(\mask_flat[7] ),
    .Y(_179_));
 sky130_fd_sc_hd__o21ai_0 _289_ (.A1(\key_lat[3] ),
    .A2(\data_flat[7] ),
    .B1(_179_),
    .Y(_180_));
 sky130_fd_sc_hd__and4b_1 _290_ (.A_N(_174_),
    .B(_176_),
    .C(_178_),
    .D(_180_),
    .X(_181_));
 sky130_fd_sc_hd__nor2_1 _291_ (.A(_172_),
    .B(_181_),
    .Y(_182_));
 sky130_fd_sc_hd__nor4_1 _292_ (.A(_154_),
    .B(_163_),
    .C(_172_),
    .D(_181_),
    .Y(_183_));
 sky130_fd_sc_hd__nand2_1 _293_ (.A(_001_),
    .B(_183_),
    .Y(_184_));
 sky130_fd_sc_hd__nor2b_1 _294_ (.A(req_pending),
    .B_N(search_en),
    .Y(_185_));
 sky130_fd_sc_hd__nor2_1 _295_ (.A(match_valid),
    .B(_001_),
    .Y(_186_));
 sky130_fd_sc_hd__a311oi_1 _296_ (.A1(_143_),
    .A2(_001_),
    .A3(_183_),
    .B1(_185_),
    .C1(_186_),
    .Y(_095_));
 sky130_fd_sc_hd__nand2_1 _297_ (.A(match_addr[2]),
    .B(_145_),
    .Y(_187_));
 sky130_fd_sc_hd__o21ai_0 _298_ (.A1(_143_),
    .A2(_184_),
    .B1(_187_),
    .Y(_094_));
 sky130_fd_sc_hd__nor2_1 _299_ (.A(match_addr[1]),
    .B(_001_),
    .Y(_188_));
 sky130_fd_sc_hd__nor3b_1 _300_ (.A(_123_),
    .B(_132_),
    .C_N(_141_),
    .Y(_189_));
 sky130_fd_sc_hd__o31ai_1 _301_ (.A1(_154_),
    .A2(_163_),
    .A3(_189_),
    .B1(_182_),
    .Y(_190_));
 sky130_fd_sc_hd__a31oi_1 _302_ (.A1(_114_),
    .A2(_142_),
    .A3(_183_),
    .B1(_145_),
    .Y(_191_));
 sky130_fd_sc_hd__a21oi_1 _303_ (.A1(_190_),
    .A2(_191_),
    .B1(_188_),
    .Y(_093_));
 sky130_fd_sc_hd__nor2_1 _304_ (.A(match_addr[0]),
    .B(_001_),
    .Y(_192_));
 sky130_fd_sc_hd__nor2b_1 _305_ (.A(_154_),
    .B_N(_163_),
    .Y(_193_));
 sky130_fd_sc_hd__o21bai_1 _306_ (.A1(_181_),
    .A2(_193_),
    .B1_N(_172_),
    .Y(_194_));
 sky130_fd_sc_hd__nand3b_1 _307_ (.A_N(_123_),
    .B(_132_),
    .C(_183_),
    .Y(_195_));
 sky130_fd_sc_hd__a31oi_1 _308_ (.A1(_191_),
    .A2(_194_),
    .A3(_195_),
    .B1(_192_),
    .Y(_092_));
 sky130_fd_sc_hd__mux2_1 _309_ (.A0(\key_lat[3] ),
    .A1(search_key[3]),
    .S(_185_),
    .X(_091_));
 sky130_fd_sc_hd__mux2_1 _310_ (.A0(\key_lat[2] ),
    .A1(search_key[2]),
    .S(_185_),
    .X(_090_));
 sky130_fd_sc_hd__mux2_1 _311_ (.A0(\key_lat[1] ),
    .A1(search_key[1]),
    .S(_185_),
    .X(_089_));
 sky130_fd_sc_hd__mux2_1 _312_ (.A0(\key_lat[0] ),
    .A1(search_key[0]),
    .S(_185_),
    .X(_088_));
 sky130_fd_sc_hd__nor2_1 _313_ (.A(req_pending),
    .B(search_en),
    .Y(_196_));
 sky130_fd_sc_hd__nor2_1 _314_ (.A(_001_),
    .B(_196_),
    .Y(_087_));
 sky130_fd_sc_hd__nand2_1 _315_ (.A(serial_clk_en),
    .B(\bit_cnt[0] ),
    .Y(_197_));
 sky130_fd_sc_hd__nand3_1 _316_ (.A(serial_clk_en),
    .B(\bit_cnt[1] ),
    .C(\bit_cnt[0] ),
    .Y(_198_));
 sky130_fd_sc_hd__a21oi_1 _317_ (.A1(_104_),
    .A2(\bit_cnt[2] ),
    .B1(_198_),
    .Y(_199_));
 sky130_fd_sc_hd__a21oi_1 _318_ (.A1(_104_),
    .A2(_198_),
    .B1(_199_),
    .Y(_086_));
 sky130_fd_sc_hd__nor3_1 _319_ (.A(\bit_cnt[3] ),
    .B(\bit_cnt[2] ),
    .C(_198_),
    .Y(_200_));
 sky130_fd_sc_hd__a21o_1 _320_ (.A1(\bit_cnt[2] ),
    .A2(_198_),
    .B1(_200_),
    .X(_085_));
 sky130_fd_sc_hd__xnor2_1 _321_ (.A(\bit_cnt[1] ),
    .B(_197_),
    .Y(_084_));
 sky130_fd_sc_hd__xor2_1 _322_ (.A(serial_clk_en),
    .B(\bit_cnt[0] ),
    .X(_083_));
 sky130_fd_sc_hd__mux2_1 _323_ (.A0(\s_waddr[2] ),
    .A1(\s_waddr[1] ),
    .S(serial_clk_en),
    .X(_082_));
 sky130_fd_sc_hd__mux2_1 _324_ (.A0(\s_waddr[1] ),
    .A1(\s_waddr[0] ),
    .S(serial_clk_en),
    .X(_081_));
 sky130_fd_sc_hd__mux2_1 _325_ (.A0(\s_waddr[0] ),
    .A1(\s_wdata[3] ),
    .S(serial_clk_en),
    .X(_080_));
 sky130_fd_sc_hd__mux2_1 _326_ (.A0(\s_wdata[3] ),
    .A1(\s_wdata[2] ),
    .S(serial_clk_en),
    .X(_079_));
 sky130_fd_sc_hd__mux2_1 _327_ (.A0(\s_wdata[2] ),
    .A1(\s_wdata[1] ),
    .S(serial_clk_en),
    .X(_078_));
 sky130_fd_sc_hd__mux2_1 _328_ (.A0(\s_wdata[1] ),
    .A1(\s_wdata[0] ),
    .S(serial_clk_en),
    .X(_077_));
 sky130_fd_sc_hd__mux2_1 _329_ (.A0(\s_wdata[0] ),
    .A1(\s_wmask[3] ),
    .S(serial_clk_en),
    .X(_076_));
 sky130_fd_sc_hd__mux2_1 _330_ (.A0(\s_wmask[3] ),
    .A1(\s_wmask[2] ),
    .S(serial_clk_en),
    .X(_075_));
 sky130_fd_sc_hd__mux2_1 _331_ (.A0(\s_wmask[2] ),
    .A1(\s_wmask[1] ),
    .S(serial_clk_en),
    .X(_074_));
 sky130_fd_sc_hd__mux2_1 _332_ (.A0(\s_wmask[1] ),
    .A1(\s_wmask[0] ),
    .S(serial_clk_en),
    .X(_073_));
 sky130_fd_sc_hd__mux2_1 _333_ (.A0(\s_wmask[0] ),
    .A1(serial_in),
    .S(serial_clk_en),
    .X(_072_));
 sky130_fd_sc_hd__a21boi_0 _334_ (.A1(\wr_addr_lat[2] ),
    .A2(pump_phase),
    .B1_N(mode_q),
    .Y(_201_));
 sky130_fd_sc_hd__o21ai_0 _335_ (.A1(\wr_addr_lat[2] ),
    .A2(pump_phase),
    .B1(_201_),
    .Y(_202_));
 sky130_fd_sc_hd__nand2_1 _336_ (.A(wr_pending),
    .B(_202_),
    .Y(_203_));
 sky130_fd_sc_hd__nand3_1 _337_ (.A(\wr_addr_lat[2] ),
    .B(wr_pending),
    .C(_202_),
    .Y(_204_));
 sky130_fd_sc_hd__nand2_1 _338_ (.A(\wr_addr_lat[1] ),
    .B(\wr_addr_lat[0] ),
    .Y(_205_));
 sky130_fd_sc_hd__nor2_1 _339_ (.A(_204_),
    .B(_205_),
    .Y(_101_));
 sky130_fd_sc_hd__or2_0 _340_ (.A(\valid[7] ),
    .B(_101_),
    .X(_071_));
 sky130_fd_sc_hd__nand2b_1 _341_ (.A_N(\wr_addr_lat[0] ),
    .B(\wr_addr_lat[1] ),
    .Y(_206_));
 sky130_fd_sc_hd__nor2_1 _342_ (.A(_204_),
    .B(_206_),
    .Y(_102_));
 sky130_fd_sc_hd__or2_0 _343_ (.A(\valid[6] ),
    .B(_102_),
    .X(_070_));
 sky130_fd_sc_hd__nand2b_1 _344_ (.A_N(\wr_addr_lat[1] ),
    .B(\wr_addr_lat[0] ),
    .Y(_207_));
 sky130_fd_sc_hd__nor2_1 _345_ (.A(_204_),
    .B(_207_),
    .Y(_103_));
 sky130_fd_sc_hd__or2_0 _346_ (.A(\valid[5] ),
    .B(_103_),
    .X(_069_));
 sky130_fd_sc_hd__nor3_1 _347_ (.A(\wr_addr_lat[1] ),
    .B(\wr_addr_lat[0] ),
    .C(_204_),
    .Y(_096_));
 sky130_fd_sc_hd__or2_0 _348_ (.A(\valid[4] ),
    .B(_096_),
    .X(_068_));
 sky130_fd_sc_hd__or2_0 _349_ (.A(\wr_addr_lat[2] ),
    .B(_203_),
    .X(_208_));
 sky130_fd_sc_hd__nor2_1 _350_ (.A(_205_),
    .B(_208_),
    .Y(_097_));
 sky130_fd_sc_hd__or2_0 _351_ (.A(\valid[3] ),
    .B(_097_),
    .X(_067_));
 sky130_fd_sc_hd__nor2_1 _352_ (.A(_206_),
    .B(_208_),
    .Y(_098_));
 sky130_fd_sc_hd__or2_0 _353_ (.A(\valid[2] ),
    .B(_098_),
    .X(_066_));
 sky130_fd_sc_hd__nor2_1 _354_ (.A(_207_),
    .B(_208_),
    .Y(_099_));
 sky130_fd_sc_hd__or2_0 _355_ (.A(\valid[1] ),
    .B(_099_),
    .X(_065_));
 sky130_fd_sc_hd__nor3_1 _356_ (.A(\wr_addr_lat[1] ),
    .B(\wr_addr_lat[0] ),
    .C(_208_),
    .Y(_100_));
 sky130_fd_sc_hd__or2_0 _357_ (.A(\valid[0] ),
    .B(_100_),
    .X(_064_));
 sky130_fd_sc_hd__nand2b_1 _358_ (.A_N(wr_pending),
    .B(load_en),
    .Y(_209_));
 sky130_fd_sc_hd__mux2_1 _359_ (.A0(\s_wmask[3] ),
    .A1(\wr_mask_lat[3] ),
    .S(_209_),
    .X(_063_));
 sky130_fd_sc_hd__mux2_1 _360_ (.A0(\s_wmask[2] ),
    .A1(\wr_mask_lat[2] ),
    .S(_209_),
    .X(_062_));
 sky130_fd_sc_hd__mux2_1 _361_ (.A0(\s_wmask[1] ),
    .A1(\wr_mask_lat[1] ),
    .S(_209_),
    .X(_061_));
 sky130_fd_sc_hd__mux2_1 _362_ (.A0(\s_wmask[0] ),
    .A1(\wr_mask_lat[0] ),
    .S(_209_),
    .X(_060_));
 sky130_fd_sc_hd__mux2_1 _363_ (.A0(\s_wdata[3] ),
    .A1(\wr_data_lat[3] ),
    .S(_209_),
    .X(_059_));
 sky130_fd_sc_hd__mux2_1 _364_ (.A0(\s_wdata[2] ),
    .A1(\wr_data_lat[2] ),
    .S(_209_),
    .X(_058_));
 sky130_fd_sc_hd__mux2_1 _365_ (.A0(\s_wdata[1] ),
    .A1(\wr_data_lat[1] ),
    .S(_209_),
    .X(_057_));
 sky130_fd_sc_hd__mux2_1 _366_ (.A0(\s_wdata[0] ),
    .A1(\wr_data_lat[0] ),
    .S(_209_),
    .X(_056_));
 sky130_fd_sc_hd__mux2_1 _367_ (.A0(\s_waddr[2] ),
    .A1(\wr_addr_lat[2] ),
    .S(_209_),
    .X(_055_));
 sky130_fd_sc_hd__mux2_1 _368_ (.A0(\s_waddr[1] ),
    .A1(\wr_addr_lat[1] ),
    .S(_209_),
    .X(_054_));
 sky130_fd_sc_hd__mux2_1 _369_ (.A0(\s_waddr[0] ),
    .A1(\wr_addr_lat[0] ),
    .S(_209_),
    .X(_053_));
 sky130_fd_sc_hd__nor3b_1 _370_ (.A(\bit_cnt[2] ),
    .B(_198_),
    .C_N(\bit_cnt[3] ),
    .Y(_002_));
 sky130_fd_sc_hd__o21a_1 _371_ (.A1(load_en),
    .A2(wr_pending),
    .B1(_203_),
    .X(_003_));
 sky130_fd_sc_hd__inv_1 _372_ (.A(rst),
    .Y(_005_));
 sky130_fd_sc_hd__inv_1 _373_ (.A(rst),
    .Y(_006_));
 sky130_fd_sc_hd__inv_1 _374_ (.A(rst),
    .Y(_007_));
 sky130_fd_sc_hd__inv_1 _375_ (.A(rst),
    .Y(_008_));
 sky130_fd_sc_hd__inv_1 _376_ (.A(rst),
    .Y(_009_));
 sky130_fd_sc_hd__inv_1 _377_ (.A(rst),
    .Y(_010_));
 sky130_fd_sc_hd__inv_1 _378_ (.A(rst),
    .Y(_011_));
 sky130_fd_sc_hd__inv_1 _379_ (.A(rst),
    .Y(_012_));
 sky130_fd_sc_hd__inv_1 _380_ (.A(rst),
    .Y(_013_));
 sky130_fd_sc_hd__inv_1 _381_ (.A(rst),
    .Y(_014_));
 sky130_fd_sc_hd__inv_1 _382_ (.A(rst),
    .Y(_015_));
 sky130_fd_sc_hd__inv_1 _383_ (.A(rst),
    .Y(_016_));
 sky130_fd_sc_hd__inv_1 _384_ (.A(rst),
    .Y(_017_));
 sky130_fd_sc_hd__inv_1 _385_ (.A(rst),
    .Y(_018_));
 sky130_fd_sc_hd__inv_1 _386_ (.A(rst),
    .Y(_019_));
 sky130_fd_sc_hd__inv_1 _387_ (.A(rst),
    .Y(_020_));
 sky130_fd_sc_hd__inv_1 _388_ (.A(rst),
    .Y(_021_));
 sky130_fd_sc_hd__inv_1 _389_ (.A(rst),
    .Y(_022_));
 sky130_fd_sc_hd__inv_1 _390_ (.A(rst),
    .Y(_023_));
 sky130_fd_sc_hd__inv_1 _391_ (.A(rst),
    .Y(_024_));
 sky130_fd_sc_hd__inv_1 _392_ (.A(rst),
    .Y(_025_));
 sky130_fd_sc_hd__inv_1 _393_ (.A(rst),
    .Y(_026_));
 sky130_fd_sc_hd__inv_1 _394_ (.A(rst),
    .Y(_027_));
 sky130_fd_sc_hd__inv_1 _395_ (.A(rst),
    .Y(_028_));
 sky130_fd_sc_hd__inv_1 _396_ (.A(rst),
    .Y(_029_));
 sky130_fd_sc_hd__inv_1 _397_ (.A(rst),
    .Y(_030_));
 sky130_fd_sc_hd__inv_1 _398_ (.A(rst),
    .Y(_031_));
 sky130_fd_sc_hd__inv_1 _399_ (.A(rst),
    .Y(_032_));
 sky130_fd_sc_hd__inv_1 _400_ (.A(rst),
    .Y(_033_));
 sky130_fd_sc_hd__inv_1 _401_ (.A(rst),
    .Y(_034_));
 sky130_fd_sc_hd__inv_1 _402_ (.A(rst),
    .Y(_035_));
 sky130_fd_sc_hd__inv_1 _403_ (.A(rst),
    .Y(_036_));
 sky130_fd_sc_hd__inv_1 _404_ (.A(rst),
    .Y(_037_));
 sky130_fd_sc_hd__inv_1 _405_ (.A(rst),
    .Y(_038_));
 sky130_fd_sc_hd__inv_1 _406_ (.A(rst),
    .Y(_039_));
 sky130_fd_sc_hd__inv_1 _407_ (.A(rst),
    .Y(_040_));
 sky130_fd_sc_hd__inv_1 _408_ (.A(rst),
    .Y(_041_));
 sky130_fd_sc_hd__inv_1 _409_ (.A(rst),
    .Y(_042_));
 sky130_fd_sc_hd__inv_1 _410_ (.A(rst),
    .Y(_043_));
 sky130_fd_sc_hd__inv_1 _411_ (.A(rst),
    .Y(_044_));
 sky130_fd_sc_hd__inv_1 _412_ (.A(rst),
    .Y(_045_));
 sky130_fd_sc_hd__inv_1 _413_ (.A(rst),
    .Y(_046_));
 sky130_fd_sc_hd__inv_1 _414_ (.A(rst),
    .Y(_047_));
 sky130_fd_sc_hd__inv_1 _415_ (.A(rst),
    .Y(_048_));
 sky130_fd_sc_hd__inv_1 _416_ (.A(rst),
    .Y(_049_));
 sky130_fd_sc_hd__inv_1 _417_ (.A(rst),
    .Y(_050_));
 sky130_fd_sc_hd__inv_1 _418_ (.A(rst),
    .Y(_051_));
 sky130_fd_sc_hd__inv_1 _419_ (.A(rst),
    .Y(_052_));
 sky130_fd_sc_hd__dfrtp_1 _420_ (.CLK(clk),
    .D(_001_),
    .RESET_B(_038_),
    .Q(search_done));
 sky130_fd_sc_hd__dfrtp_1 _421_ (.CLK(clk),
    .D(_003_),
    .RESET_B(_039_),
    .Q(wr_pending));
 sky130_fd_sc_hd__dfrtp_1 _422_ (.CLK(clk),
    .D(_002_),
    .RESET_B(_040_),
    .Q(shift_done));
 sky130_fd_sc_hd__dfrtp_1 _423_ (.CLK(clk),
    .D(_000_),
    .RESET_B(_041_),
    .Q(pump_phase));
 sky130_fd_sc_hd__dfrtp_1 _424_ (.CLK(clk),
    .D(mode),
    .RESET_B(_042_),
    .Q(mode_s1));
 sky130_fd_sc_hd__dfrtp_1 _425_ (.CLK(clk),
    .D(mode_s1),
    .RESET_B(_043_),
    .Q(mode_q));
 sky130_fd_sc_hd__edfxtp_1 _426_ (.CLK(clk),
    .D(\wr_data_lat[3] ),
    .DE(_096_),
    .Q(\data_flat[19] ));
 sky130_fd_sc_hd__edfxtp_1 _427_ (.CLK(clk),
    .D(\wr_data_lat[2] ),
    .DE(_096_),
    .Q(\data_flat[18] ));
 sky130_fd_sc_hd__edfxtp_1 _428_ (.CLK(clk),
    .D(\wr_data_lat[1] ),
    .DE(_096_),
    .Q(\data_flat[17] ));
 sky130_fd_sc_hd__edfxtp_1 _429_ (.CLK(clk),
    .D(\wr_data_lat[0] ),
    .DE(_096_),
    .Q(\data_flat[16] ));
 sky130_fd_sc_hd__edfxtp_1 _430_ (.CLK(clk),
    .D(\wr_data_lat[3] ),
    .DE(_097_),
    .Q(\data_flat[15] ));
 sky130_fd_sc_hd__edfxtp_1 _431_ (.CLK(clk),
    .D(\wr_data_lat[2] ),
    .DE(_097_),
    .Q(\data_flat[14] ));
 sky130_fd_sc_hd__edfxtp_1 _432_ (.CLK(clk),
    .D(\wr_data_lat[1] ),
    .DE(_097_),
    .Q(\data_flat[13] ));
 sky130_fd_sc_hd__edfxtp_1 _433_ (.CLK(clk),
    .D(\wr_data_lat[0] ),
    .DE(_097_),
    .Q(\data_flat[12] ));
 sky130_fd_sc_hd__edfxtp_1 _434_ (.CLK(clk),
    .D(\wr_data_lat[3] ),
    .DE(_098_),
    .Q(\data_flat[11] ));
 sky130_fd_sc_hd__edfxtp_1 _435_ (.CLK(clk),
    .D(\wr_data_lat[2] ),
    .DE(_098_),
    .Q(\data_flat[10] ));
 sky130_fd_sc_hd__edfxtp_1 _436_ (.CLK(clk),
    .D(\wr_data_lat[1] ),
    .DE(_098_),
    .Q(\data_flat[9] ));
 sky130_fd_sc_hd__edfxtp_1 _437_ (.CLK(clk),
    .D(\wr_data_lat[0] ),
    .DE(_098_),
    .Q(\data_flat[8] ));
 sky130_fd_sc_hd__edfxtp_1 _438_ (.CLK(clk),
    .D(\wr_data_lat[3] ),
    .DE(_099_),
    .Q(\data_flat[7] ));
 sky130_fd_sc_hd__edfxtp_1 _439_ (.CLK(clk),
    .D(\wr_data_lat[2] ),
    .DE(_099_),
    .Q(\data_flat[6] ));
 sky130_fd_sc_hd__edfxtp_1 _440_ (.CLK(clk),
    .D(\wr_data_lat[1] ),
    .DE(_099_),
    .Q(\data_flat[5] ));
 sky130_fd_sc_hd__edfxtp_1 _441_ (.CLK(clk),
    .D(\wr_data_lat[0] ),
    .DE(_099_),
    .Q(\data_flat[4] ));
 sky130_fd_sc_hd__edfxtp_1 _442_ (.CLK(clk),
    .D(\wr_data_lat[3] ),
    .DE(_100_),
    .Q(\data_flat[3] ));
 sky130_fd_sc_hd__edfxtp_1 _443_ (.CLK(clk),
    .D(\wr_data_lat[2] ),
    .DE(_100_),
    .Q(\data_flat[2] ));
 sky130_fd_sc_hd__edfxtp_1 _444_ (.CLK(clk),
    .D(\wr_data_lat[1] ),
    .DE(_100_),
    .Q(\data_flat[1] ));
 sky130_fd_sc_hd__edfxtp_1 _445_ (.CLK(clk),
    .D(\wr_data_lat[0] ),
    .DE(_100_),
    .Q(\data_flat[0] ));
 sky130_fd_sc_hd__edfxtp_1 _446_ (.CLK(clk),
    .D(\wr_mask_lat[3] ),
    .DE(_101_),
    .Q(\mask_flat[31] ));
 sky130_fd_sc_hd__edfxtp_1 _447_ (.CLK(clk),
    .D(\wr_mask_lat[2] ),
    .DE(_101_),
    .Q(\mask_flat[30] ));
 sky130_fd_sc_hd__edfxtp_1 _448_ (.CLK(clk),
    .D(\wr_mask_lat[1] ),
    .DE(_101_),
    .Q(\mask_flat[29] ));
 sky130_fd_sc_hd__edfxtp_1 _449_ (.CLK(clk),
    .D(\wr_mask_lat[0] ),
    .DE(_101_),
    .Q(\mask_flat[28] ));
 sky130_fd_sc_hd__edfxtp_1 _450_ (.CLK(clk),
    .D(\wr_mask_lat[3] ),
    .DE(_102_),
    .Q(\mask_flat[27] ));
 sky130_fd_sc_hd__edfxtp_1 _451_ (.CLK(clk),
    .D(\wr_mask_lat[2] ),
    .DE(_102_),
    .Q(\mask_flat[26] ));
 sky130_fd_sc_hd__edfxtp_1 _452_ (.CLK(clk),
    .D(\wr_mask_lat[1] ),
    .DE(_102_),
    .Q(\mask_flat[25] ));
 sky130_fd_sc_hd__edfxtp_1 _453_ (.CLK(clk),
    .D(\wr_mask_lat[0] ),
    .DE(_102_),
    .Q(\mask_flat[24] ));
 sky130_fd_sc_hd__edfxtp_1 _454_ (.CLK(clk),
    .D(\wr_mask_lat[3] ),
    .DE(_103_),
    .Q(\mask_flat[23] ));
 sky130_fd_sc_hd__edfxtp_1 _455_ (.CLK(clk),
    .D(\wr_mask_lat[2] ),
    .DE(_103_),
    .Q(\mask_flat[22] ));
 sky130_fd_sc_hd__edfxtp_1 _456_ (.CLK(clk),
    .D(\wr_mask_lat[1] ),
    .DE(_103_),
    .Q(\mask_flat[21] ));
 sky130_fd_sc_hd__edfxtp_1 _457_ (.CLK(clk),
    .D(\wr_mask_lat[0] ),
    .DE(_103_),
    .Q(\mask_flat[20] ));
 sky130_fd_sc_hd__edfxtp_1 _458_ (.CLK(clk),
    .D(\wr_mask_lat[3] ),
    .DE(_096_),
    .Q(\mask_flat[19] ));
 sky130_fd_sc_hd__edfxtp_1 _459_ (.CLK(clk),
    .D(\wr_mask_lat[2] ),
    .DE(_096_),
    .Q(\mask_flat[18] ));
 sky130_fd_sc_hd__edfxtp_1 _460_ (.CLK(clk),
    .D(\wr_mask_lat[1] ),
    .DE(_096_),
    .Q(\mask_flat[17] ));
 sky130_fd_sc_hd__edfxtp_1 _461_ (.CLK(clk),
    .D(\wr_mask_lat[0] ),
    .DE(_096_),
    .Q(\mask_flat[16] ));
 sky130_fd_sc_hd__edfxtp_1 _462_ (.CLK(clk),
    .D(\wr_mask_lat[3] ),
    .DE(_097_),
    .Q(\mask_flat[15] ));
 sky130_fd_sc_hd__edfxtp_1 _463_ (.CLK(clk),
    .D(\wr_mask_lat[2] ),
    .DE(_097_),
    .Q(\mask_flat[14] ));
 sky130_fd_sc_hd__edfxtp_1 _464_ (.CLK(clk),
    .D(\wr_mask_lat[1] ),
    .DE(_097_),
    .Q(\mask_flat[13] ));
 sky130_fd_sc_hd__edfxtp_1 _465_ (.CLK(clk),
    .D(\wr_mask_lat[0] ),
    .DE(_097_),
    .Q(\mask_flat[12] ));
 sky130_fd_sc_hd__edfxtp_1 _466_ (.CLK(clk),
    .D(\wr_mask_lat[3] ),
    .DE(_098_),
    .Q(\mask_flat[11] ));
 sky130_fd_sc_hd__edfxtp_1 _467_ (.CLK(clk),
    .D(\wr_mask_lat[2] ),
    .DE(_098_),
    .Q(\mask_flat[10] ));
 sky130_fd_sc_hd__edfxtp_1 _468_ (.CLK(clk),
    .D(\wr_mask_lat[1] ),
    .DE(_098_),
    .Q(\mask_flat[9] ));
 sky130_fd_sc_hd__edfxtp_1 _469_ (.CLK(clk),
    .D(\wr_mask_lat[0] ),
    .DE(_098_),
    .Q(\mask_flat[8] ));
 sky130_fd_sc_hd__edfxtp_1 _470_ (.CLK(clk),
    .D(\wr_mask_lat[3] ),
    .DE(_099_),
    .Q(\mask_flat[7] ));
 sky130_fd_sc_hd__edfxtp_1 _471_ (.CLK(clk),
    .D(\wr_mask_lat[2] ),
    .DE(_099_),
    .Q(\mask_flat[6] ));
 sky130_fd_sc_hd__edfxtp_1 _472_ (.CLK(clk),
    .D(\wr_mask_lat[1] ),
    .DE(_099_),
    .Q(\mask_flat[5] ));
 sky130_fd_sc_hd__edfxtp_1 _473_ (.CLK(clk),
    .D(\wr_mask_lat[0] ),
    .DE(_099_),
    .Q(\mask_flat[4] ));
 sky130_fd_sc_hd__edfxtp_1 _474_ (.CLK(clk),
    .D(\wr_mask_lat[3] ),
    .DE(_100_),
    .Q(\mask_flat[3] ));
 sky130_fd_sc_hd__edfxtp_1 _475_ (.CLK(clk),
    .D(\wr_mask_lat[2] ),
    .DE(_100_),
    .Q(\mask_flat[2] ));
 sky130_fd_sc_hd__edfxtp_1 _476_ (.CLK(clk),
    .D(\wr_mask_lat[1] ),
    .DE(_100_),
    .Q(\mask_flat[1] ));
 sky130_fd_sc_hd__edfxtp_1 _477_ (.CLK(clk),
    .D(\wr_mask_lat[0] ),
    .DE(_100_),
    .Q(\mask_flat[0] ));
 sky130_fd_sc_hd__edfxtp_1 _478_ (.CLK(clk),
    .D(\wr_data_lat[3] ),
    .DE(_101_),
    .Q(\data_flat[31] ));
 sky130_fd_sc_hd__edfxtp_1 _479_ (.CLK(clk),
    .D(\wr_data_lat[2] ),
    .DE(_101_),
    .Q(\data_flat[30] ));
 sky130_fd_sc_hd__edfxtp_1 _480_ (.CLK(clk),
    .D(\wr_data_lat[1] ),
    .DE(_101_),
    .Q(\data_flat[29] ));
 sky130_fd_sc_hd__edfxtp_1 _481_ (.CLK(clk),
    .D(\wr_data_lat[0] ),
    .DE(_101_),
    .Q(\data_flat[28] ));
 sky130_fd_sc_hd__edfxtp_1 _482_ (.CLK(clk),
    .D(\wr_data_lat[3] ),
    .DE(_102_),
    .Q(\data_flat[27] ));
 sky130_fd_sc_hd__edfxtp_1 _483_ (.CLK(clk),
    .D(\wr_data_lat[2] ),
    .DE(_102_),
    .Q(\data_flat[26] ));
 sky130_fd_sc_hd__edfxtp_1 _484_ (.CLK(clk),
    .D(\wr_data_lat[1] ),
    .DE(_102_),
    .Q(\data_flat[25] ));
 sky130_fd_sc_hd__edfxtp_1 _485_ (.CLK(clk),
    .D(\wr_data_lat[0] ),
    .DE(_102_),
    .Q(\data_flat[24] ));
 sky130_fd_sc_hd__edfxtp_1 _486_ (.CLK(clk),
    .D(\wr_data_lat[3] ),
    .DE(_103_),
    .Q(\data_flat[23] ));
 sky130_fd_sc_hd__edfxtp_1 _487_ (.CLK(clk),
    .D(\wr_data_lat[2] ),
    .DE(_103_),
    .Q(\data_flat[22] ));
 sky130_fd_sc_hd__edfxtp_1 _488_ (.CLK(clk),
    .D(\wr_data_lat[1] ),
    .DE(_103_),
    .Q(\data_flat[21] ));
 sky130_fd_sc_hd__edfxtp_1 _489_ (.CLK(clk),
    .D(\wr_data_lat[0] ),
    .DE(_103_),
    .Q(\data_flat[20] ));
 sky130_fd_sc_hd__dfrtp_1 _490_ (.CLK(clk),
    .D(_087_),
    .RESET_B(_044_),
    .Q(req_pending));
 sky130_fd_sc_hd__dfrtp_1 _491_ (.CLK(clk),
    .D(_088_),
    .RESET_B(_045_),
    .Q(\key_lat[0] ));
 sky130_fd_sc_hd__dfrtp_1 _492_ (.CLK(clk),
    .D(_089_),
    .RESET_B(_046_),
    .Q(\key_lat[1] ));
 sky130_fd_sc_hd__dfrtp_1 _493_ (.CLK(clk),
    .D(_090_),
    .RESET_B(_047_),
    .Q(\key_lat[2] ));
 sky130_fd_sc_hd__dfrtp_1 _494_ (.CLK(clk),
    .D(_091_),
    .RESET_B(_048_),
    .Q(\key_lat[3] ));
 sky130_fd_sc_hd__dfrtp_1 _495_ (.CLK(clk),
    .D(_092_),
    .RESET_B(_049_),
    .Q(match_addr[0]));
 sky130_fd_sc_hd__dfrtp_1 _496_ (.CLK(clk),
    .D(_093_),
    .RESET_B(_050_),
    .Q(match_addr[1]));
 sky130_fd_sc_hd__dfrtp_1 _497_ (.CLK(clk),
    .D(_094_),
    .RESET_B(_051_),
    .Q(match_addr[2]));
 sky130_fd_sc_hd__dfrtp_1 _498_ (.CLK(clk),
    .D(_095_),
    .RESET_B(_052_),
    .Q(match_valid));
 sky130_fd_sc_hd__dfrtp_1 _499_ (.CLK(clk),
    .D(_053_),
    .RESET_B(_004_),
    .Q(\wr_addr_lat[0] ));
 sky130_fd_sc_hd__dfrtp_1 _500_ (.CLK(clk),
    .D(_054_),
    .RESET_B(_005_),
    .Q(\wr_addr_lat[1] ));
 sky130_fd_sc_hd__dfrtp_1 _501_ (.CLK(clk),
    .D(_055_),
    .RESET_B(_006_),
    .Q(\wr_addr_lat[2] ));
 sky130_fd_sc_hd__dfrtp_1 _502_ (.CLK(clk),
    .D(_056_),
    .RESET_B(_007_),
    .Q(\wr_data_lat[0] ));
 sky130_fd_sc_hd__dfrtp_1 _503_ (.CLK(clk),
    .D(_057_),
    .RESET_B(_008_),
    .Q(\wr_data_lat[1] ));
 sky130_fd_sc_hd__dfrtp_1 _504_ (.CLK(clk),
    .D(_058_),
    .RESET_B(_009_),
    .Q(\wr_data_lat[2] ));
 sky130_fd_sc_hd__dfrtp_1 _505_ (.CLK(clk),
    .D(_059_),
    .RESET_B(_010_),
    .Q(\wr_data_lat[3] ));
 sky130_fd_sc_hd__dfrtp_1 _506_ (.CLK(clk),
    .D(_060_),
    .RESET_B(_011_),
    .Q(\wr_mask_lat[0] ));
 sky130_fd_sc_hd__dfrtp_1 _507_ (.CLK(clk),
    .D(_061_),
    .RESET_B(_012_),
    .Q(\wr_mask_lat[1] ));
 sky130_fd_sc_hd__dfrtp_1 _508_ (.CLK(clk),
    .D(_062_),
    .RESET_B(_013_),
    .Q(\wr_mask_lat[2] ));
 sky130_fd_sc_hd__dfrtp_1 _509_ (.CLK(clk),
    .D(_063_),
    .RESET_B(_014_),
    .Q(\wr_mask_lat[3] ));
 sky130_fd_sc_hd__dfrtp_1 _510_ (.CLK(clk),
    .D(_064_),
    .RESET_B(_015_),
    .Q(\valid[0] ));
 sky130_fd_sc_hd__dfrtp_1 _511_ (.CLK(clk),
    .D(_065_),
    .RESET_B(_016_),
    .Q(\valid[1] ));
 sky130_fd_sc_hd__dfrtp_1 _512_ (.CLK(clk),
    .D(_066_),
    .RESET_B(_017_),
    .Q(\valid[2] ));
 sky130_fd_sc_hd__dfrtp_1 _513_ (.CLK(clk),
    .D(_067_),
    .RESET_B(_018_),
    .Q(\valid[3] ));
 sky130_fd_sc_hd__dfrtp_1 _514_ (.CLK(clk),
    .D(_068_),
    .RESET_B(_019_),
    .Q(\valid[4] ));
 sky130_fd_sc_hd__dfrtp_1 _515_ (.CLK(clk),
    .D(_069_),
    .RESET_B(_020_),
    .Q(\valid[5] ));
 sky130_fd_sc_hd__dfrtp_1 _516_ (.CLK(clk),
    .D(_070_),
    .RESET_B(_021_),
    .Q(\valid[6] ));
 sky130_fd_sc_hd__dfrtp_1 _517_ (.CLK(clk),
    .D(_071_),
    .RESET_B(_022_),
    .Q(\valid[7] ));
 sky130_fd_sc_hd__dfrtp_1 _518_ (.CLK(clk),
    .D(_072_),
    .RESET_B(_023_),
    .Q(\s_wmask[0] ));
 sky130_fd_sc_hd__dfrtp_1 _519_ (.CLK(clk),
    .D(_073_),
    .RESET_B(_024_),
    .Q(\s_wmask[1] ));
 sky130_fd_sc_hd__dfrtp_1 _520_ (.CLK(clk),
    .D(_074_),
    .RESET_B(_025_),
    .Q(\s_wmask[2] ));
 sky130_fd_sc_hd__dfrtp_1 _521_ (.CLK(clk),
    .D(_075_),
    .RESET_B(_026_),
    .Q(\s_wmask[3] ));
 sky130_fd_sc_hd__dfrtp_1 _522_ (.CLK(clk),
    .D(_076_),
    .RESET_B(_027_),
    .Q(\s_wdata[0] ));
 sky130_fd_sc_hd__dfrtp_1 _523_ (.CLK(clk),
    .D(_077_),
    .RESET_B(_028_),
    .Q(\s_wdata[1] ));
 sky130_fd_sc_hd__dfrtp_1 _524_ (.CLK(clk),
    .D(_078_),
    .RESET_B(_029_),
    .Q(\s_wdata[2] ));
 sky130_fd_sc_hd__dfrtp_1 _525_ (.CLK(clk),
    .D(_079_),
    .RESET_B(_030_),
    .Q(\s_wdata[3] ));
 sky130_fd_sc_hd__dfrtp_1 _526_ (.CLK(clk),
    .D(_080_),
    .RESET_B(_031_),
    .Q(\s_waddr[0] ));
 sky130_fd_sc_hd__dfrtp_1 _527_ (.CLK(clk),
    .D(_081_),
    .RESET_B(_032_),
    .Q(\s_waddr[1] ));
 sky130_fd_sc_hd__dfrtp_1 _528_ (.CLK(clk),
    .D(_082_),
    .RESET_B(_033_),
    .Q(\s_waddr[2] ));
 sky130_fd_sc_hd__dfrtp_1 _529_ (.CLK(clk),
    .D(_083_),
    .RESET_B(_034_),
    .Q(\bit_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_1 _530_ (.CLK(clk),
    .D(_084_),
    .RESET_B(_035_),
    .Q(\bit_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_1 _531_ (.CLK(clk),
    .D(_085_),
    .RESET_B(_036_),
    .Q(\bit_cnt[2] ));
 sky130_fd_sc_hd__dfrtp_1 _532_ (.CLK(clk),
    .D(_086_),
    .RESET_B(_037_),
    .Q(\bit_cnt[3] ));
 sky130_fd_sc_hd__buf_2 _533_ (.A(pump_phase),
    .X(pump_activity[0]));
 sky130_fd_sc_hd__buf_2 _534_ (.A(mode_q),
    .X(pump_activity[1]));
endmodule
