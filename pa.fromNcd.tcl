
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name SimpleOS -dir "D:/project/ISE/project/SimpleOS/planAhead_run_2" -part xc7k160tfbg676-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/project/ISE/project/SimpleOS/SimpleOS.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/project/ISE/project/SimpleOS} {ipcore_dir} }
set_property target_constrs_file "Sword_Original.ucf" [current_fileset -constrset]
add_files [list {Sword_Original.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "D:/project/ISE/project/SimpleOS/SimpleOS.ncd"
if {[catch {read_twx -name results_1 -file "D:/project/ISE/project/SimpleOS/SimpleOS.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/project/ISE/project/SimpleOS/SimpleOS.twx\": $eInfo"
}
