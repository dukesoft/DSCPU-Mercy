draw_sprite(sprite_index, 0, room_width/2 - lengthdir_x(200, current_time/10), room_height/2- lengthdir_y(200, current_time/10))
draw_set_color(c_white);
draw_text(10, 60, "FPS: " + string(fps) + "/" + string(room_speed) + " (" + string(fps_real) + ")\nDukeSoft CPU Saver <"+((dscpu_active()) ? "ACTIVE" : "DISABLED" )+"> \n Press space to toggle");

//Random calculations to make CPU fluctuate a lot
repeat (5349+random(53490)) {
	x = random(2400) * random(2400);
}

if (keyboard_check_pressed(vk_space)) {
	if (dscpu_active()) {
		dscpu_destroy();
	} else {
		dscpu_init();
		dscpu_set_debug(true);
		dscpu_set_grace(500); //Not required - default value is 500.
		dscpu_set_tightness(0.95); //Not required - default value is 0.9.
	}
}
