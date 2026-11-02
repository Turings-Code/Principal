depth=-obj_mesaTuring.y;

if (instance_exists(obj_letrae)) {
    if (point_distance(x, y, obj_alan.x, obj_alan.y) <= alcance && keyboard_check_pressed(ord("E"))){
		global.chavecinza=true;
			obj_inventario.nome_item = "Chave Cinza";
    obj_inventario.ganhouitem = true;
	audio_play_sound(snd_itemnovo, 1, false);
		instance_destroy();
	}
}


