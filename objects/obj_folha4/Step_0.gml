var _cam = view_camera[0];
var _cx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
var _cy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;

if (global.folha_arrastada == id) {
    x = mouse_x + off_x;
    y = mouse_y + off_y;
    view_off_x = x - _cx;
    view_off_y = y - _cy;

    if (!mouse_check_button(mb_left)) global.folha_arrastada = noone;
} else {
    x = _cx + view_off_x;
    y = _cy + view_off_y;
}

// fecha apertando E (depois do delay, e só se não estiver já fechando)
if (delay > 0) {
    delay -= 1;
} else if (!fading_out && keyboard_check_pressed(ord("E"))) {
    fading_out = true;
}

// fade
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