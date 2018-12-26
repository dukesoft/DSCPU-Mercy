///@description Set debug messages
///@param enable_debug_messages
if (!dscpu_active()) {
	show_error("DS CPU Saver is not active! Use dscpu_active() to check.", false);
	return false;
}

dscpu_obj_main.debug = argument0;