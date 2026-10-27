var _cam = view_camera[0];

var _cx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
var _cy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;

x = _cx;
y = _cy;

texto_x1 = _cx + texto_offset_x;
texto_x2 = _cx + texto_limite_offset_x;
texto_y = _cy + texto_offset_y;

var _image_anterior = image_index;

for (var i = 0; i < array_length(areas_offset); i++) {
    areas[i] = [
        _cx + areas_offset[i][0],
        _cy + areas_offset[i][1],
        _cx + areas_offset[i][2],
        _cy + areas_offset[i][3]
    ];
}

var _mx = mouse_x - camera_get_view_x(_cam);
var _my = mouse_y - camera_get_view_y(_cam);
var _na_area = (_mx > 1500 && _my < 120);

var _area_mouse = -1;

for (var i = 0; i < array_length(areas); i++) {
    if (mouse_x >= areas[i][0] && mouse_x <= areas[i][2]
    && mouse_y >= areas[i][1] && mouse_y <= areas[i][3]) {
        _area_mouse = i;
        break;
    }
}

if (fase == 1) {
    sprite_index = spr_enigma2fase1;
    image_speed = 0;
}

if (delay > 0) {
    delay--;
} else if (!fading_out && _na_area && mouse_check_button_pressed(mb_left)) {
    fading_out = true;
}

if (fase == 1 && delay <= 0 && !fading_out && mouse_check_button_pressed(mb_left)) {
    if (_area_mouse != -1) {
        if (image_index == 0) {
            image_index = _area_mouse + 1;
        }
        else if (image_index == _area_mouse + 1) {
            image_index = 0;
        }
        else if (image_index == 2 && _area_mouse == 3) {
		image_index = 5;
		}
        else if (image_index == 4 && _area_mouse == 1) {
            image_index = 5;
        }
        else {
		image_index = 0;
		erro_timer = erro_tempo;
		audio_play_sound(snd_errorenig, 1, false);
	}


        if (image_index == 5) {
            fase = 2;
            sprite_index = spr_enigma2;
            image_index = 0;
            image_speed = 0;
        }
    }
}

if (fase == 1 && image_index != _image_anterior) {
    audio_play_sound(snd_plugboard, 1, false);
}

if (fading_out) {
    image_alpha -= fade_speed;

    if (image_alpha <= 0) {
        instance_destroy();
        exit;
    }
} else {
    image_alpha = min(image_alpha + fade_speed, 1);
}

if (timer_tecla > 0) {
    timer_tecla--;

    if (timer_tecla <= 0) {
        image_index = 0;
    }
}

if (erro_timer > 0) {
    erro_timer--;
}

if (acerto_timer > 0) {
    acerto_timer--;

    if (acerto_timer <= 0) {
        digitado = "";
        palavra_atual++;
    }
}

if (fase != 1 && acerto_timer <= 0) {
    for (var i = 0; i < 26; i++) {
        if (keyboard_check_pressed(ord("A") + i)) {
			audio_play_sound(snd_tecla1, 1, false);
    ultima_tecla = i;
    image_index = i + 1;
    timer_tecla = tempo_tecla;

    if (texto_x1 + texto_desloca + string_length(digitado) * (letra_larg + fonte_espaco) + letra_larg <= texto_x2) {
        digitado += string_char_at(cifra, i + 1);
    }
}
    }

    if (keyboard_check_pressed(vk_backspace)) {
		audio_play_sound(snd_tecla1, 1, false);
        ultima_tecla = 26;
        image_index = 27;
        timer_tecla = tempo_tecla;

        if (string_length(digitado) > 0) {
            digitado = string_delete(digitado, string_length(digitado), 1);
        }
    }

    if (palavra_atual < array_length(palavras) && digitado == palavras[palavra_atual]) {
        acerto_timer = acerto_tempo;

        switch (palavra_atual) {
            case 0: global.seis = true; break;
            case 1: global.sete = true; break;
            case 2: global.dois = true; break;
            case 3: global.quatro = true; break;
        }
    }
}

if (_area_mouse != -1 || (delay <= 0 && !fading_out && _na_area)) {
    obj_cursormouse.mao = true;
}

if(!flagsla&&sprite_index=spr_enigma1){
	flagsla=true;
	audio_play_sound(snd_plugboard, 1, false);}