if (aviso_ativo) {
    aviso_y += aviso_vel;
    aviso_alpha -= aviso_fade;
    if (aviso_alpha <= 0) aviso_ativo = false;
}

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
    if (os_browser != browser_not_a_browser) {
        audio_play_sound(snd_inventario, 1, false);
        aviso_ativo = true;
        aviso_y = 0;
        aviso_alpha = 0.9;
    } else {
        scr_salvar();
        game_end();
    }
}

    if (_frame == 1 && mouse_check_button_pressed(mb_left)) {
        fading_out = true;
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