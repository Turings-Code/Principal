depth=-obj_mesa2mansao.y;

if (instance_exists(obj_letrae)) {
    if (point_distance(x, y, obj_alan.x, obj_alan.y) <= alcance && keyboard_check_pressed(ord("E"))){
		global.fragmento1=true;
			obj_inventario.nome_item = "Fragmento do Código 1";
    obj_inventario.ganhouitem = true;
	audio_play_sound(snd_itemnovo, 1, false);
		obj_objetivos.define_objetivo("OBJETIVO - Abra a Sala da Bombe");
    obj_objetivos.define_etapas([
        "Religue a Energia da Porta",
        "Encontre a Válvula Mestra",
        "Encontre os Fragmentos do Código (1/3)"
    ]);
		instance_destroy();
	}
}


