if (!dssleep_is_initialized()) {
	instance_create_depth(0, 0, 0, _dssleep_main);
}