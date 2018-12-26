var __us = get_timer() - dscpu_obj_begin.__timer;
var __frametime = ((1000 / room_speed)*1000);
var __leftoverus = __frametime - __us;
var __calculated_sleep = __leftoverus * dscpu_obj_main.tightness - dscpu_obj_main.grace_us

if (dscpu_obj_main.debug) show_debug_message("Step took " + string(__us) + " microseconds");
if (dscpu_obj_main.debug) show_debug_message("Frame should take " + string(__frametime) + " microseconds");
if (dscpu_obj_main.debug) show_debug_message("Time left: " + string(__leftoverus) + " microseconds");

if (__calculated_sleep > 500) {
	if (dscpu_obj_main.debug) show_debug_message("Calculated sleep: " + string(__calculated_sleep) + " microseconds");
	dssleep_microseconds(__calculated_sleep);
}