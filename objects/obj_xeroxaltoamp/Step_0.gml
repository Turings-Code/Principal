var _bloqueado = instance_exists(obj_cutscene5) && (obj_cutscene5.cutscene || obj_cutscene5.radio_timer > 0);

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