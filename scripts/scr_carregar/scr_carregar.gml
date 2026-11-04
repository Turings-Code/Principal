function scr_carregar() {
    if (!file_exists("save.json")) return false;

    var _buffer = buffer_load("save.json");
    var _texto = buffer_read(_buffer, buffer_string);
    buffer_delete(_buffer);

    var _d = json_parse(_texto);

    if (!variable_struct_exists(_d, "room")) return false;

    var _r = asset_get_index(_d.room);
    if (_r == -1 || !room_exists(_r)) return false;

    if (variable_struct_exists(_d, "cutscene4criada")) {
        global.cutscene4criada = _d.cutscene4criada;
    }
	if (variable_struct_exists(_d, "cutscene6criada")) {
    global.cutscene6criada = _d.cutscene6criada;
}

    if (_r == rm_hut6) {
        global.valvulaalfa = true;
        global.mapahut6 = true;
        global.folhasenigma = true;
    }
	

    if (_r == rm_mansao) {
        global.valvulaalfa = true;
        global.valvulabeta = true;
        global.mapahut6 = true;
        global.folhasenigma = true;
    }

    if (_r == rm_salafinal|| _r == rm_bletchley) {
        global.valvulaalfa = true;
        global.valvulabeta = true;
        global.valvulamestra = true;
        global.fragmento1 = true;
        global.fragmento2 = true;
        global.fragmento3 = true;
        global.chavecinza = true;
        global.mapahut6 = true;
        global.folhasenigma = true;
		
    }
	if (_r == rm_bletchley){
		obj_trocaroom.spawn_x = 2428;
		obj_trocaroom.spawn_y = 689;
		obj_trocaroom.usar_spawn = true;
	}

    if (_r == rm_bletchley2 && global.cutscene4criada) {
    global.valvulaalfa = true;
    global.folhasenigma = true;
    obj_trocaroom.spawn_x = 2351;
    obj_trocaroom.spawn_y = 2685;
    obj_trocaroom.usar_spawn = true;
	
}
	if (_r == rm_bletchley2 && global.cutscene6criada) {
    global.valvulaalfa = true;
    global.valvulabeta = true;
	global.folhasenigma = true;
	global.mapahut6 = true;
	global.codigohut6 = true;
    obj_trocaroom.spawn_x = 2863;
    obj_trocaroom.spawn_y = 1167;
    obj_trocaroom.usar_spawn = true;
}


    if (_r != room) room_goto(_r);

    return true;
}

