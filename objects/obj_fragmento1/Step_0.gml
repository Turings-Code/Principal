depth=-obj_mesa2mansao.y;

if (instance_exists(obj_letrae)) {
    if (point_distance(x, y, obj_alan.x, obj_alan.y) <= alcance && keyboard_check_pressed(ord("E"))){
		global.fragmento1=true;
			obj_inventario.nome_item = "Fragmento do Código 1";
    obj_inventario.ganhouitem = true;
	audio_play_sound(snd_itemnovo, 1, false);
	obj_organizaobjetivos.atualizar();
	
		instance_destroy();
	}
}


