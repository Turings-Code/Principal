var _bloqueado = (instance_exists(obj_cutscene5) && (obj_cutscene5.cutscene || obj_cutscene5.radio_timer > 0)) || rotator_criado;

if (delay > 0) {
    delay -= 1;
} else if (!fading_out && !_bloqueado && keyboard_check_pressed(ord("E"))) {
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

if (global.codigofinalhut6 && !rotator_criado && delay <= 0 && !fading_out) {
    var _gx = device_mouse_x_to_gui(0);
    var _gy = device_mouse_y_to_gui(0);

    if (point_in_rectangle(_gx, _gy, area_rotator[0], area_rotator[1], area_rotator[2], area_rotator[3])) {
        obj_cursormouse.mao = true;

        if (mouse_check_button_pressed(mb_left)) {
            rotator_criado = true;
            instance_create_depth(0, 0, depth - 1, obj_rotatorbase);
            instance_create_depth(0, 0, depth - 2, obj_rotator);
        }
    }
}