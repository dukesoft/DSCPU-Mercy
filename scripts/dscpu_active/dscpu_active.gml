///@description Tells you if the cpu saver is active
///@return bool
function dscpu_active() {
	return instance_exists(dscpu_obj_begin);


}
