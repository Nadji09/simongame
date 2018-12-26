
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name didact_hdl -dir "E:/2CS SIQ/SYSE/Projet/didact_hdl/planAhead_run_3" -part xc6slx4csg225-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/2CS SIQ/SYSE/Projet/didact_hdl/didact_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/2CS SIQ/SYSE/Projet/didact_hdl} {ipcore_dir} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "didact_top.ucf" [current_fileset -constrset]
add_files [list {didact_top.ucf}] -fileset [get_property constrset [current_run]]
link_design
