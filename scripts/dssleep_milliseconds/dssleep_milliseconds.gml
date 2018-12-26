///@description Sleep for X amount, not blocking CPU.
///@param int milliseconds
if (!dssleep_is_initialized()) {
	show_error("DSSleep is not initialized!", false);
	return 0;
}

return external_call(_dssleep_main.__milliseconds, argument0);