time = time + delta_time / 1000000;
if (time >= 3) {
	instance_destroy();
	room_goto(rm_menu);
}