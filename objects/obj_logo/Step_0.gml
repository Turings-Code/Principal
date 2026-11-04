if (estado == 0) {
    image_alpha = min(image_alpha + fade_vel, 1);
    if (image_alpha >= 1) {
        estado = 1;
        timer = 2 * game_get_speed(gamespeed_fps);
    }
}
else if (estado == 1) {
    timer--;
    if (timer <= 0) estado = 2;
}
else if (estado == 2) {
    image_alpha = max(image_alpha - fade_vel, 0);
    if (image_alpha <= 0) estado = 3;
}
else if (estado == 3) {
    if (mouse_check_button_pressed(mb_left)) {
        var _f = instance_create_depth(0, 0, -400000, obj_fadeparamenu);
_f.image_xscale = 10;
_f.image_yscale = 10;
        estado = 4;
    }
}