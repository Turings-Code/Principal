if (delay > 0) {
    delay -= 1;
} else if (!fading_out && keyboard_check_pressed(ord("E"))) {
    fading_out = true;
}

if (fading_out) {
    image_alpha -= fade_speed;

    if (image_alpha <= 0) {
        instance_destroy();
        exit;
    }
} else {
    image_alpha += fade_speed;

    if (image_alpha > 1) {
        image_alpha = 1;
    }
}

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

var _cabo_ativo = false;

with (obj_cabo) {
    if (!conectado) {
        _cabo_ativo = true;
    }
}

if (mouse_check_button_pressed(mb_left) && !_cabo_ativo && !fading_out) {
    for (var i = 0; i < array_length(areas_cabos); i++) {
        if (cabos_conectados[i]) continue;

        var _area = areas_cabos[i];

        if (point_in_rectangle(_mx, _my, _area[0], _area[1], _area[2], _area[3])) {
            var _cam = view_camera[0];
            var _gw = display_get_gui_width();
            var _gh = display_get_gui_height();

            var _cx = camera_get_view_x(_cam);
            var _cy = camera_get_view_y(_cam);
            var _w = camera_get_view_width(_cam);
            var _h = camera_get_view_height(_cam);

            var _ax = _cx + ((_area[0] + _area[2]) / 2) * _w / _gw;
            var _ay = _cy + ((_area[1] + _area[3]) / 2) * _h / _gh;

            var _cabo = instance_create_depth(_ax, _ay, -51000, obj_cabo);

            _cabo.indice = i;
            _cabo.cor = cores_cabos[i];

            break;
        }
    }
}

var _todos_conectados = true;

for (var i = 0; i < array_length(cabos_conectados); i++) {
    if (!cabos_conectados[i]) {
        _todos_conectados = false;
        break;
    }
}

if (_todos_conectados && !conclusao_ativada) {
    conclusao_ativada = true;
    fading_out = true;
	

    with (obj_portaazul) {
        destrancada = true;
    }

    with (obj_portaazul2) {
        destrancada = true;
    }
	if (instance_exists(obj_cutscene8)) {
		
		
    obj_cutscene8.dialogo2_ativo = true;
}
    var _colisao = instance_position(2057, 1247, obj_collisionblocktemp);

    if (_colisao != noone) {
        with (_colisao) instance_destroy();
    }

    var _colisao2 = instance_position(2730, 2655, obj_collisionblocktemp);

    if (_colisao2 != noone) {
        with (_colisao2) instance_destroy();
    }

    with (obj_caixadeenergiaaparece) {
        instance_destroy();
    }
	
	obj_organizaobjetivos.atualizar();
}