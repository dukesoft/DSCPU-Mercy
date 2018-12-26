var safety = 1000;
var us = get_timer() - obj_sleep_begin.timer;
show_debug_message("END END (took "+string(us)+")");
	
if (keyboard_check(vk_space)) {

	var leftoverus = ((1000 / room_speed)*1000) - us;
	show_debug_message("SLEEP FOR "+string(leftoverus)+" us");

	if (leftoverus > 500) {
		dssleep_microseconds(leftoverus*0.9);
	}
}