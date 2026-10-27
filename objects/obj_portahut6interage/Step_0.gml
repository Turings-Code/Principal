if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_alan)) {
    if (distance_to_object(obj_alan) < 80) {
        obj_cutscene5.turingentrahut6=true;
		obj_portahut6.image_speed=3;
		instance_destroy();
    }
}