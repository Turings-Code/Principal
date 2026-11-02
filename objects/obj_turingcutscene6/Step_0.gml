if (instance_exists(obj_letrae) && instance_exists(obj_cutscene6)) {
    if (point_distance(x, y, obj_alan.x, obj_alan.y) <= alcance
    && keyboard_check_pressed(ord("E"))
    && !obj_cutscene6.caixadetexto
    && !obj_cutscene6.cutscene) {
        obj_cutscene6.dialogo1 = true;
		obj_objetivos.define_objetivo(" ");
        obj_objetivos.define_etapas([]);
		instance_destroy();
    }
}

