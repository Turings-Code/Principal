if (delay > 0) delay--;

if (fading_out) {
    image_alpha -= fade_speed;
    if (image_alpha <= 0) {
        instance_destroy();
        exit;
    }
} else {
    image_alpha = min(image_alpha + fade_speed, 1);
}

var _gx = device_mouse_x_to_gui(0);
var _gy = device_mouse_y_to_gui(0);
var _frame = 0;

if (!fading_out && delay <= 0) {
    for (var i = 0; i < array_length(areas_menu); i++) {
        var _a = areas_menu[i];
        if (point_in_rectangle(_gx, _gy, _a[0], _a[1], _a[2], _a[3])) {
            _frame = i + 1;
            obj_cursormouse.mao = true;
            break;
        }
    }

    if (_frame == 2 && mouse_check_button_pressed(mb_left)) {
        scr_salvar();
        room_goto(rm_menu);
    }
	    if (_frame == 1 && mouse_check_button_pressed(mb_left)) {
        fading_out = true;
    }

    if (_frame == 3 && mouse_check_button_pressed(mb_left)) {
		scr_salvar();
        room_goto(rm_menu);
    }

    var _fechar = point_in_rectangle(_gx, _gy, area_fechar[0], area_fechar[1], area_fechar[2], area_fechar[3]);

    if (_fechar) {
        obj_cursormouse.mao = true;

        if (mouse_check_button_pressed(mb_left)) {
            fading_out = true;
        }
    }
}

image_index = _frame;