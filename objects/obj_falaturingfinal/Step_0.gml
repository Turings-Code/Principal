if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_alan) && instance_exists(obj_cutscene9)) {
    if (point_distance(x, y, obj_alan.x, obj_alan.y) < 250 && !obj_cutscene9.caixadetexto && !obj_cutscene9.cutscene) {
        obj_cutscene9.dialogo_final1 = true;
		instance_create_layer(2621, 976, "Instances", obj_valvulaalfafinal);
		instance_create_layer(2819, 976, "Instances", obj_valvulabetafinal);
		instance_create_layer(2418, 976, "Instances", obj_valvulamestrafinal);
		instance_destroy();
    }
}
