set script_name "scripts/cabletester.tcl"
set tmp_script_name [ string map { ".tcl" "_old.tcl" } ${script_name} ]
write_project_tcl -no_copy_sources -force -use_bd_files -origin_dir_override "scripts" -target_proj_dir "vivado" ${script_name}
file copy -force $script_name $tmp_script_name
set origfile [open $tmp_script_name r] 
set newfile  [open $script_name w+] 
while {[eof $origfile] != 1} { 
    gets $origfile lineInfo
    if [ string match "# Set 'sources_1' fileset file properties for local files" $lineInfo] {
        puts $newfile "#This line is added by create_tcl.tcl to recreate the top level wrapper for the block design"
    	puts $newfile "make_wrapper -files \[get_files *\${_xil_proj_name_}.bd\] -top -import"
        puts $newfile ""
    }
    if [ string match "*set_property -name \"board_part\"*" $lineInfo] {
        puts $newfile "set_property -name \"board_part_repo_paths\" -value \"\$origin_dir/../board\" -objects \$obj"
    }
    if {! [string match "*file normalize *_wrapper.v*" $lineInfo] && ![ string match "*set_property -name \"board_part_repo_paths\"*" $lineInfo]} {
        puts $newfile $lineInfo
    }
} 
close $origfile
close $newfile
file delete -force scripts/$tmp_script_name

