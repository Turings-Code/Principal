show_debug_message(string(cadeado1)+string(cadeado2)+string(cadeado3));

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

var _gx = device_mouse_x_to_gui(0);
var _gy = device_mouse_y_to_gui(0);

var _area_mouse = -1;

for (var i = 0; i < array_length(areas_cofre); i++) {
    if (cadeado1_ok && i < 8) continue;
    if (cadeado2_ok && i >= 8 && i < 16) continue;
    if (cadeado3_ok && i >= 16) continue;
    var _r = areas_cofre[i];
    if (point_in_rectangle(_gx, _gy, _r[0], _r[1], _r[2], _r[3])) {
        _area_mouse = i;
        break;
    }
}

if (_area_mouse != -1 && delay <= 0 && !fading_out && mouse_check_button_pressed(mb_left)) {
    var _par = _area_mouse div 2;

    if (_area_mouse mod 2 == 0) {
        digitos[_par] = (digitos[_par] + 1) mod 16;
    } else {
        digitos[_par] = (digitos[_par] + 15) mod 16;
    }
}

var _ok = [true, true, true];

for (var g = 0; g < 3; g++) {
    for (var d = 0; d < 4; d++) {
        if (digitos[g * 4 + d] != senhas[g][d]) {
            _ok[g] = false;
        }
    }
}

cadeado1 = _ok[0];
cadeado2 = _ok[1];
cadeado3 = _ok[2];
if (cadeado1) cadeado1_ok = true;
if (cadeado2) cadeado2_ok = true;
if (cadeado3) cadeado3_ok = true;

if (_area_mouse != -1) {
    obj_cursormouse.mao = true;
}