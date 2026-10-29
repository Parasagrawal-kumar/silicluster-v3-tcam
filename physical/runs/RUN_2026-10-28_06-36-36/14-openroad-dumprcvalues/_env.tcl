set ::env(STD_CELL_LIBRARY) sky130_fd_sc_hd
set ::env(STEP_ID) OpenROAD.DumpRCValues
set ::env(TECH_LEF) /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef
set ::env(MACRO_LEFS) ""
set ::env(PAD_CELL_LIBRARY) sky130_ef_io
set ::env(VDD_PIN) VPWR
set ::env(GND_PIN) VGND
set ::env(TECH_LEFS) "\"nom_*\" /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__nom.tlef \"min_*\" /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__min.tlef \"max_*\" /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/techlef/sky130_fd_sc_hd__max.tlef"
set ::env(PRIMARY_GDSII_STREAMOUT_TOOL) magic
set ::env(DEFAULT_CORNER) nom_tt_025C_1v80
set ::env(STA_CORNERS) "nom_tt_025C_1v80 nom_ss_100C_1v60 nom_ff_n40C_1v95 min_tt_025C_1v80 min_ss_100C_1v60 min_ff_n40C_1v95 max_tt_025C_1v80 max_ss_100C_1v60 max_ff_n40C_1v95"
set ::env(RT_MIN_LAYER) met1
set ::env(RT_MAX_LAYER) met5
set ::env(SCL_GROUND_PINS) "VGND VNB"
set ::env(SCL_POWER_PINS) "VPWR VPB"
set ::env(TRISTATE_CELLS) "\"sky130_fd_sc_hd__ebuf*\" \"sky130_fd_sc_hd__einv*\""
set ::env(FILL_CELLS) "\"sky130_fd_sc_hd__fill*\""
set ::env(DECAP_CELLS) "\"sky130_fd_sc_hd__decap*\""
set ::env(CELL_LIBS) "\"*_tt_025C_1v80\" /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib.gz \"*_ff_n40C_1v95\" /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ff_n40C_1v95.lib.gz \"*_ss_100C_1v60\" /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__ss_100C_1v60.lib.gz"
set ::env(CELL_LEFS) "/foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_ef_sc_hd.lef /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/lef/sky130_fd_sc_hd.lef"
set ::env(CELL_GDS) /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds
set ::env(CELL_VERILOG_MODELS) /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd.v
set ::env(CELL_BB_VERILOG_MODELS) "/foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd__blackbox.v /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/verilog/sky130_fd_sc_hd__blackbox_pp.v"
set ::env(CELL_SPICE_MODELS) "/foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__decap_12.spice /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__decap_20_12.spice /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__decap_40_12.spice /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__decap_60_12.spice /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__decap_80_12.spice /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__fill_12.spice /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__fill_2.spice /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__fill_4.spice /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_ef_sc_hd__fill_8.spice /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice"
set ::env(CELL_CDLS) /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/cdl/sky130_fd_sc_hd.cdl
set ::env(SYNTH_EXCLUDED_CELL_FILE) /foss/pdks/sky130A/libs.tech/librelane/sky130_fd_sc_hd/synth_excluded.cells
set ::env(PNR_EXCLUDED_CELL_FILE) /foss/pdks/sky130A/libs.tech/librelane/sky130_fd_sc_hd/pnr_excluded.cells
set ::env(OUTPUT_CAP_LOAD) 33.442
set ::env(MAX_FANOUT_CONSTRAINT) 10
set ::env(MAX_TRANSITION_CONSTRAINT) 0.75
set ::env(MAX_CAPACITANCE_CONSTRAINT) 0.2
set ::env(CLOCK_UNCERTAINTY_CONSTRAINT) 0.25
set ::env(CLOCK_TRANSITION_CONSTRAINT) 0.1499999999999999944488848768742172978818416595458984375
set ::env(TIME_DERATING_CONSTRAINT) 5.0
set ::env(IO_DELAY_CONSTRAINT) 20.0
set ::env(SYNTH_DRIVING_CELL) sky130_fd_sc_hd__inv_2/Y
set ::env(SYNTH_CLK_DRIVING_CELL) sky130_fd_sc_hd__clkinv_2/Y
set ::env(SYNTH_TIEHI_CELL) sky130_fd_sc_hd__conb_1/HI
set ::env(SYNTH_TIELO_CELL) sky130_fd_sc_hd__conb_1/LO
set ::env(SYNTH_BUFFER_CELL) sky130_fd_sc_hd__buf_2/A/X
set ::env(PLACE_SITE) unithd
set ::env(CELL_PAD_EXCLUDE) "\"sky130_fd_sc_hd__tap*\" \"sky130_fd_sc_hd__decap*\" \"sky130_fd_sc_hd__fill*\""
set ::env(DIODE_CELL) sky130_fd_sc_hd__diode_2/DIODE
set ::env(WELLTAP_CELL) sky130_fd_sc_hd__tapvpwrvgnd_1
set ::env(ENDCAP_CELL) sky130_fd_sc_hd__decap_3
set ::env(DESIGN_NAME) tcam_switchable_ablation
set ::env(CLOCK_PERIOD) 100.0
set ::env(CLOCK_PORT) clk
set ::env(FALLBACK_SDC) /usr/local/lib/python3.12/dist-packages/librelane/scripts/base.sdc
set ::env(PAD_LIBS) "\"*_tt_025C_1v80\" \"/foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_tt_025C_1v80_3v30.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_tt_025C_1v80_3v30_3v30.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_tt_tt_025C_1v80_3v30.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/slices_stubs.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__analog_stubs.lib.gz\" \"*_ff_n40C_1v95\" \"/foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ff_n40C_1v95_5v50.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ff_n40C_1v95_5v50_5v50.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_ff_ff_n40C_1v95_5v50.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/slices_stubs.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__analog_stubs.lib.gz\" \"*_ss_100C_1v60\" \"/foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vccd_lvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssd_lvc_clamped_pad_ss_100C_1v60_3v00.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vddio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__vssio_hvc_clamped_pad_ss_100C_1v60_3v00_3v00.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__gpiov2_pad_ss_ss_100C_1v60_3v00.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/slices_stubs.lib.gz /foss/pdks/sky130A/libs.ref/sky130_fd_io/lib/sky130_ef_io__analog_stubs.lib.gz\""
set ::env(PAD_LEFS) /foss/pdks/sky130A/libs.ref/sky130_fd_io/lef/sky130_ef_io.lef
set ::env(PAD_GDS) "/foss/pdks/sky130A/libs.ref/sky130_fd_io/gds/sky130_fd_io.gds /foss/pdks/sky130A/libs.ref/sky130_fd_io/gds/sky130_ef_io.gds /foss/pdks/sky130A/libs.ref/sky130_fd_io/gds/sky130_ef_io__analog.gds /foss/pdks/sky130A/libs.ref/sky130_fd_io/gds/sky130_ef_io__connect_vcchib_vccd_and_vswitch_vddio_slice_20um.gds /foss/pdks/sky130A/libs.ref/sky130_fd_io/gds/sky130_ef_io__connect_vdda_vddio_and_vssa_vssio_slice_20um.gds"
set ::env(PAD_VERILOG_MODELS) "/foss/pdks/sky130A/libs.ref/sky130_fd_io/verilog/sky130_fd_io__blackbox_pp.v /foss/pdks/sky130A/libs.ref/sky130_fd_io/verilog/sky130_ef_io.v"
set ::env(PAD_CDLS) /foss/pdks/sky130A/libs.ref/sky130_fd_io/cdl/sky130_ef_io.cdl
set ::env(PAD_CORNER) sky130_ef_io__corner_pad
set ::env(PAD_FILLERS) "sky130_ef_io__com_bus_slice_20um sky130_ef_io__com_bus_slice_10um sky130_ef_io__com_bus_slice_5um sky130_ef_io__com_bus_slice_1um"
set ::env(PAD_SITE_NAME) sky130_io
set ::env(PAD_CORNER_SITE_NAME) sky130_io_corner
set ::env(PAD_FAKE_SITES) "sky130_io \"1.0 200.0\" sky130_io_corner \"200.0 204.0\""
set ::env(PAD_PLACE_IO_TERMINALS) "sky130_ef_io__gpiov2_pad/PAD sky130_ef_io__vccd_lvc_clamped_pad/VCCD_PAD sky130_ef_io__vssd_lvc_clamped_pad/VSSD_PAD sky130_ef_io__vddio_hvc_clamped_pad/VDDIO_PAD sky130_ef_io__vssio_hvc_clamped_pad/VSSIO_PAD sky130_ef_io__analog_esd_pad/P_PAD sky130_ef_io__analog_minesd_pad/P_PAD sky130_ef_io__analog_minesd_pad_short/P_PAD sky130_ef_io__analog_noesd_pad/P_PAD sky130_ef_io__analog_pad/P_PAD"
set ::env(PAD_EDGE_SPACING) 0.0
set ::env(PAD_ROTATION_HORIZONTAL) R180
set ::env(PAD_ROTATION_VERTICAL) R180
set ::env(PAD_ROTATION_CORNER) R180
set ::env(SET_RC_VERBOSE) 0
set ::env(SIGNAL_WIRE_RC_LAYERS) met2
set ::env(PDN_CONNECT_MACROS_TO_GRID) 1
set ::env(PDN_ENABLE_GLOBAL_CONNECTIONS) 1
set ::env(PNR_SDC_FILE) /foss/designs/silicluster_v3_tcam_switchable/physical/src/impl.sdc
set ::env(DEDUPLICATE_CORNERS) 0
set ::env(CURRENT_DEF) /foss/designs/silicluster_v3_tcam_switchable/physical/runs/RUN_2026-10-28_06-36-36/13-openroad-floorplan/tcam_switchable_ablation.def
set ::env(SAVE_ODB) /foss/designs/silicluster_v3_tcam_switchable/physical/runs/RUN_2026-10-28_06-36-36/14-openroad-dumprcvalues/tcam_switchable_ablation.odb
set ::env(SAVE_DEF) /foss/designs/silicluster_v3_tcam_switchable/physical/runs/RUN_2026-10-28_06-36-36/14-openroad-dumprcvalues/tcam_switchable_ablation.def
set ::env(SAVE_SDC) /foss/designs/silicluster_v3_tcam_switchable/physical/runs/RUN_2026-10-28_06-36-36/14-openroad-dumprcvalues/tcam_switchable_ablation.sdc
set ::env(SAVE_NL) /foss/designs/silicluster_v3_tcam_switchable/physical/runs/RUN_2026-10-28_06-36-36/14-openroad-dumprcvalues/tcam_switchable_ablation.nl.v
set ::env(SAVE_PNL) /foss/designs/silicluster_v3_tcam_switchable/physical/runs/RUN_2026-10-28_06-36-36/14-openroad-dumprcvalues/tcam_switchable_ablation.pnl.v
