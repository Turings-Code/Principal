if (ponto < total) {
    var _destino_x = caminho_x[ponto];
    var _destino_y = caminho_y[ponto];
    var _dir = point_direction(x, y, _destino_x, _destino_y);
    var _dist = point_distance(x, y, _destino_x, _destino_y);
    if (_dist > velocidade) {
        x += lengthdir_x(velocidade, _dir);
        y += lengthdir_y(velocidade, _dir);
		image_xscale = max(0.6, image_xscale - 0.0025);
		image_yscale = max(0.6, image_yscale - 0.0025);
    } else {
        x = _destino_x;
        y = _destino_y;
        ponto += 1;
    }
}
if (x > 1000) {
	if (!instance_exists(obj_Textaofinal)) {
	    instance_create_layer(418, 3736, "Instances", obj_Textaofinal); 
	}
	if(!instance_exists(obj_plataforma)) {
		instance_create_layer(800, 800, "Instances", obj_plataforma);
	}
	if(!instance_exists(obj_player)&&!obj_controlador.jamorreu) {
		
		instance_create_layer(800, -100, "Instances", obj_player);
	}
	if(!instance_exists(obj_jogoplatafroma)) {
		instance_create_layer(0, 0, "Instances", obj_jogoplatafroma);
	}
	if(!instance_exists(obj_life1)) {
		instance_create_layer(1326, 36, "Instances", obj_life1);
		instance_create_layer(1326, 86, "Instances", obj_life2);
		instance_create_layer(1326, 136, "Instances", obj_life3);
	}
}


		