if (instance_exists(obj_letrae) && instance_exists(obj_cutscene3)) {
    if (point_distance(x, y, obj_alan.x, obj_alan.y) <= alcance
    && keyboard_check_pressed(ord("E"))
    && !obj_cutscene3.caixadetexto
    && !obj_cutscene3.cutscene) {
        obj_cutscene3.dialogo_alan_valvula = true;
    }
}