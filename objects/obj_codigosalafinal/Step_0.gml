var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

var _sobre_area = point_in_rectangle(_mx, _my, 1070, 127, 1167, 214);

if (delay > 0) {
    delay -= 1;
} else if (!fading_out && (keyboard_check_pressed(ord("E")) || (_sobre_area && mouse_check_button_pressed(mb_left)))) {
    fading_out = true;
}

if (fading_out) {
    image_alpha -= fade_speed;

    if (image_alpha <= 0) {
        instance_destroy();
    }
} else {
    image_alpha = min(image_alpha + fade_speed, 1);
}

if (_sobre_area && !fading_out && instance_exists(obj_cursormouse)) {
    obj_cursormouse.mao = true;
}

image_speed = 0;

if (global.fragmento1 && global.fragmento2 && global.fragmento3) {
    image_index = 6;
} else if (global.fragmento1 && global.fragmento2 && !global.fragmento3) {
    image_index = 3;
} else if (global.fragmento1 && global.fragmento3 && !global.fragmento2) {
    image_index = 4;
} else if (global.fragmento2 && global.fragmento3 && !global.fragmento1) {
    image_index = 5;
} else if (global.fragmento1 && !global.fragmento2 && !global.fragmento3) {
    image_index = 0;
} else if (global.fragmento2 && !global.fragmento1 && !global.fragmento3) {
    image_index = 1;
} else if (global.fragmento3 && !global.fragmento1 && !global.fragmento2) {
    image_index = 2;
} else {
    image_index = 0;
}