set script_name "scripts/link_capture.tcl"
write_project_tcl -no_copy_sources -force -use_bd_files -origin_dir_override "scripts" -target_proj_dir "vivado" ${script_name}
