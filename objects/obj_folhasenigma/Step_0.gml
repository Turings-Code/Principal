if (delay > 0) {
    delay -= 1;
} else if (!fading_out && keyboard_check_pressed(ord("E"))) {
    fading_out = true;
}

if (fading_out) {
    image_alpha -= fade_speed;
    if (image_alpha <= 0) {
        instance_destroy();
    }
} else {
    image_alpha += fade_speed;
    if (image_alpha > 1) {
        image_alpha = 1;
    }
}

if (!fading_out && delay <= 0) {
    var _cam = view_camera[0];
    var _mx = mouse_x - camera_get_view_x(_cam);
    var _my = mouse_y - camera_get_view_y(_cam);

    var _total = sprite_get_number(sprite_index);

    var _fechar = point_in_rectangle(_mx, _my, 1300, 50, 1448, 180);
var _esq = point_in_rectangle(_mx, _my, 9, 317, 182, 644);
var _dir = point_in_rectangle(_mx, _my, 1446, 310, 1614, 653);

    if (_fechar || _esq || _dir) {
    obj_cursormouse.mao = true;
}

if (mouse_check_button_pressed(mb_left)) {
    if (_fechar) {
        instance_destroy();
    }
    else if (_dir && image_index < _total - 1) {
        image_index += 1;
    }
    else if (_esq && image_index > 0) {
        image_index -= 1;
    }
}
}

if (image_index != image_index_anterior) {
    if (image_index_anterior != -1) {
        audio_play_sound(snd_folha1, 1, false);
    }
    image_index_anterior = image_index;
}