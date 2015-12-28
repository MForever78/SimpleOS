
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name SimpleOS -dir "D:/project/ISE/project/SimpleOS/planAhead_run_5" -part xc7k160tfbg676-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/project/ISE/project/SimpleOS/SimpleOS.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/project/ISE/project/SimpleOS} {ipcore_dir} }
set_property target_constrs_file "Sword_Original.ucf" [current_fileset -constrset]
add_files [list {Sword_Original.ucf}] -fileset [get_property constrset [current_run]]
link_design
