
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name didact_hdl -dir "E:/2CS SIQ/SYSE/Projet/didact_hdl/planAhead_run_2" -part xc6slx4csg225-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "didact_top.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ipcore_dir/dcm1.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {msa_hdl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {diviseur_clk.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {debounce_hdl.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {didact_top.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top didact_top $srcset
add_files [list {didact_top.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx4csg225-3
