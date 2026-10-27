if (fading_out) {
    image_alpha -= fade_speed;
    if (image_alpha <= 0) {
        if (global.folha_arrastada == id) global.folha_arrastada = noone;
        instance_destroy();
        exit;
    }
} else {
    image_alpha = min(image_alpha + fade_speed, 1);
}

var _sobre = position_meeting(mouse_x, mouse_y, id);

if (!fading_out && !arrastando && _sobre && global.folha_arrastada == noone && mouse_check_button_pressed(mb_left)) {
    arrastando = true;
    global.folha_arrastada = id;
    off_x = x - mouse_x;
    off_y = y - mouse_y;
}

if (arrastando) {
    x = mouse_x + off_x;
    y = mouse_y + off_y;

    if (!mouse_check_button(mb_left)) {
        arrastando = false;
        global.folha_arrastada = noone;
    }
}

if (!fading_out && (_sobre || arrastando)) {
    obj_cursormouse.mao = true;
}