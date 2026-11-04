if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_alan) && instance_exists(obj_cutscene9) && distance_to_object(obj_alan) <= 80 && obj_letrae.x==x) {
    var _d_letra = distance_to_object(obj_letrae);
    var _d_alfa = instance_exists(obj_valvulaalfafinal) ? distance_to_object(obj_valvulaalfafinal) : 999999;
    var _d_mestra = instance_exists(obj_valvulamestrafinal) ? distance_to_object(obj_valvulamestrafinal) : 999999;

    if (_d_letra < _d_alfa && _d_letra < _d_mestra) {
        global.valvulabeta = false;
        instance_destroy();
    }
}