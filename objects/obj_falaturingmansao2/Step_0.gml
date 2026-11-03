if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_alan) && instance_exists(obj_cutscene8)) {
    if (point_distance(x, y, obj_alan.x, obj_alan.y) < 250 && !obj_cutscene8.caixadetexto && !obj_cutscene8.cutscene) {
        obj_cutscene8.dialogo_mansaoturing2 = true;
    }
	global.fragmento1=false;
	global.fragmento2=false;
	global.fragmento3=false;
}