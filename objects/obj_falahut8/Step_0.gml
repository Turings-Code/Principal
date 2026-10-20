if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_alan)) {
    if (distance_to_object(obj_alan) < 80 && !instance_exists(obj_enigmaampl)) {
	if (instance_exists(obj_objetivos)) {
            obj_objetivos.define_objetivo("");
        }
		obj_cutscene3.cutscene=true;
		obj_alan.travado=true;
		obj_alan.direcao = "baixo";
		obj_alan.sprite_index = spr_alanparado;
		if (instance_exists(obj_cutscene3)) {
    obj_cutscene3.iniciar_dialogo = true;
}
if(instance_exists(obj_letrae)){with(obj_letrae){instance_destroy();}}
instance_destroy();
    }
}