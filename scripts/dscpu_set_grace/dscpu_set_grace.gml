///@description Set grace period
///@param grace_in_microseconds
if (!dscpu_active()) {
	show_error("DS CPU Saver is not active! Use dscpu_active() to check.", false);
	return false;
}

dscpu_obj_main.grace_us = argument0;