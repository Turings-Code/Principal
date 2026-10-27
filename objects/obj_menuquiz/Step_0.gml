var _xa = instance_exists(obj_xeroxaltoamp) ? obj_xeroxaltoamp.image_alpha : 0;
var _fechando = instance_exists(obj_xeroxaltoamp) && obj_xeroxaltoamp.fading_out;

if (estado == 0) {
    menu_vis = min(menu_vis + fade_speed, 1);
}
else if (estado == 1) {
    menu_vis -= fade_speed;
    if (menu_vis <= 0) {
        menu_vis = 0;
        estado = 2;
        timer = pausa_resultado;
    }
}
else if (estado == 2) {
    timer--;
    if (timer <= 0) {
        if (acertou) rodada_atual++;

        if (rodada_atual >= array_length(rodadas)) {
    estado = 4;
    global.quizxerox = true;
	var _base = instance_exists(obj_xeroxaltoamp) ? obj_xeroxaltoamp.depth : -50000;
var _cam = view_camera[0];
var _ex = camera_get_view_width(_cam) / display_get_gui_width();
var _ey = camera_get_view_height(_cam) / display_get_gui_height();

instance_create_depth(0, 0, _base - 3, obj_tutorialprograma);
instance_create_depth(
    camera_get_view_x(_cam) + 1130 * _ex,
    camera_get_view_y(_cam) + 281 * _ey,
    _base - 4,
    obj_codigo2hut6
);
    if (instance_exists(obj_xeroxaltoamp)) obj_xeroxaltoamp.image_index = 1;
} else {
    estado = 0;
}
    }
}

image_alpha = menu_vis * (_fechando ? 0 : 1) * _xa;
if (_fechando) image_alpha = menu_vis * _xa;

var _gx = device_mouse_x_to_gui(0);
var _gy = device_mouse_y_to_gui(0);

if (estado == 0 && menu_vis >= 1) {
    var _clicada = -1;

    for (var i = 0; i < array_length(areas); i++) {
        var _r = areas[i];
        if (point_in_rectangle(_gx, _gy, _r[0], _r[1], _r[2], _r[3])) {
            _clicada = i;
            break;
        }
    }

    if (_clicada != -1) {
        obj_cursormouse.mao = true;

        if (mouse_check_button_pressed(mb_left)) {
            acertou = (_clicada == rodadas[rodada_atual].correta);
if (acertou) {
    rodadas_completas++;
    audio_play_sound(snd_tecladoxerox, 1, false);
} else {
    audio_play_sound(snd_errorxerox, 1, false);
}
estado = 1;
        }
    }
}

if (estado == 4) {
    var _dx = device_mouse_x_to_gui(0);
    var _dy = device_mouse_y_to_gui(0);

    if (point_in_rectangle(_dx, _dy, areadigitar[0], areadigitar[1], areadigitar[2], areadigitar[3])) {
        obj_cursormouse.mao = true;

        if (mouse_check_button_pressed(mb_left)) {
    codigo_apagado = true;
    texto_digitado = "";
    keyboard_string = "";
    estado = 5;
    if (instance_exists(obj_xeroxaltoamp)) obj_xeroxaltoamp.image_index = 0;
}
    }
}

if (estado == 5) {
    if (erro_tut_timer > 0) {
        erro_tut_timer--;
        keyboard_string = "";
        entrada_tut = "";
    }
    else if (etapa_tut < string_length(codigo_alvo)) {
        keyboard_string = string_digits(keyboard_string);

        if (string_length(keyboard_string) > 3) {
            keyboard_string = string_copy(keyboard_string, 1, 3);
        }

        entrada_tut = keyboard_string;

        if (keyboard_check_pressed(vk_enter)) {
            var _esperado = string_char_at(codigo_alvo, etapa_tut + 1);

            if (entrada_tut == _esperado) {
    historico_tut += entrada_tut + "\nOutput: " + string(real(_esperado) mod 2) + "\n";
    etapa_tut++;
    audio_play_sound(snd_output, 1, false);

    if (instance_exists(obj_codigo2hut6)) {
        with (obj_codigo2hut6) {
            image_index = min(image_index + 1, image_number - 1);
        }
    }

    if (etapa_tut >= string_length(codigo_alvo)) {
        global.tutorialprograma = true;
    }
} else {
                erro_tut_timer = erro_tut_tempo;
                audio_play_sound(snd_errorxerox, 1, false);
            }

            keyboard_string = "";
            entrada_tut = "";
        }
    }
}