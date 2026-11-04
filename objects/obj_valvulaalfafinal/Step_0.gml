if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_alan) && instance_exists(obj_cutscene9) && distance_to_object(obj_alan) <= 80 && obj_letrae.x==x) {
    global.valvulaalfa=false;
	instance_destroy();
}