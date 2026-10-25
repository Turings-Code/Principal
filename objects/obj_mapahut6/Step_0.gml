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

    var _fechar = point_in_rectangle(_mx, _my, 1300, 50, 1448, 180);

    if (_fechar) {
        obj_cursormouse.mao = true;
    }

    if (mouse_check_button_pressed(mb_left) && _fechar) {
        instance_destroy();
    }
}