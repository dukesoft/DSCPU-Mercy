///@description Initialize and activate DS CPU Saver
if (dscpu_active()) {
	show_error("DS CPU Saver is already active! Use dscpu_active() to check.", false);
	return false;
}

instance_create_depth(0, 0, 0, dscpu_obj_main);
return true;