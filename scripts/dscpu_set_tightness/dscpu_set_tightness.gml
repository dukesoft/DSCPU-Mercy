///@description Set tightness (0.2 to 1) - the higher the better / more efficient. Recommended is 0.9.
///@param grace_in_microseconds
if (!dscpu_active()) {
	show_error("DS CPU Saver is not active! Use dscpu_active() to check.", false);
	return false;
}

dscpu_obj_main.tightness = clamp(argument0, 0.2, 1);