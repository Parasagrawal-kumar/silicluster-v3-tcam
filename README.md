# tcam_switchable_ablation: runtime-selectable single/two-phase TCAM (Silicluster v3, digital)

**Project type:** Digital (SKY130, 1.8 V, 10 MHz max)
**Institution:** Poornima Institute of Engineering & Technology, Jaipur, India
**Team:** Paras Kumar Agrawal, Divyanshu Soni, Akshat Agal, Shreshth
**Faculty guide:** Dr. Aditya Kumar Singh Pundir

## What it is
An 8-entry x 4-bit ternary CAM (data + per-bit mask, lowest address wins) whose access
schedule can be switched at run time by a `mode` input:

| mode | schedule | behaviour |
|---|---|---|
| 0 (P=1) | every clock is an access slot | writes land the next clock, searches complete in 2 clocks |
| 1 (P=2) | a mod-2 phase counter schedules slots | memory is split into two sub-blocks (entries 0-3 and 4-7); a write to sub-block k happens only in phase k; searches complete on phase-1 slots (2 or 3 clocks) |

The compare array and priority encoder are shared by both modes. The phase counter and the
selected mode are brought out on `pump_activity[1:0] = {mode, phase}`, so the active mode and
the phase toggling can be observed on the chip (mode 0 shows `00`, mode 1 alternates `10`/`11`).
The design is inspired by the multipumping idea of Santhosh & Agrawal (IEEE 2020), where an
SRAM is accessed in P phases per system-clock cycle. It is a small standard-cell,
schedule-level model of that idea. It makes **no** claim of area or power savings from P=2.

## Pins (top module `tcam_switchable_ablation`)
Dedicated: `clk`, `rst` (active-high, asynchronous).
General inputs (9 of 14): `mode`, `serial_in`, `serial_clk_en`, `load_en`, `search_en`, `search_key[3:0]`.
General outputs (8 of 14): `match_addr[2:0]`, `match_valid`, `search_done`, `shift_done`, `pump_activity[1:0]`.

## Operation
- **Write:** shift a 12-bit frame `{waddr[3:0], wdata[3:0], wmask[3:0]}` MSB first (one bit per clk
  with `serial_clk_en=1`; `shift_done` pulses after the 12th bit), then pulse `load_en` for one clk.
  `waddr[3]` is ignored. A mask bit of 1 means "don't care" for that bit. Unwritten entries never match.
- **Search:** put the key on `search_key`, pulse `search_en` for one clk. `search_done` pulses for
  one clk when the result is ready; `match_valid`/`match_addr` then hold the result until the next search.
- Change `mode` only while idle. It passes through a 2-flop synchronizer (takes effect after 2 clks).

## Files
- `rtl/tcam_switchable_ablation.v`: synthesizable Verilog-2001
- `tb/tb_tcam_switchable_ablation.v`: self-checking testbench (both modes, reference model,
  pump_activity check, run-time mode switch without reset); prints `ALL TESTS PASSED`
- `physical/config.yaml`, `physical/src/impl.sdc`: OpenLane configuration (100 ns clock on `clk`)

## Simulation
    iverilog -o sim rtl/tcam_switchable_ablation.v tb/tb_tcam_switchable_ablation.v
    vvp sim

## Physical design
    cd physical && openlane config.yaml     # same layout as a standard OpenLane 2 project
