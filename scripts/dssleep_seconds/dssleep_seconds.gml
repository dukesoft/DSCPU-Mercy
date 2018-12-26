///@description Sleep for X amount, not blocking CPU.
///@param int seconds
if (!dssleep_is_initialized()) {
	show_error("DSSleep is not initialized!", false);
	return 0;
}

return external_call(_dssleep_main.__seconds, argument0);