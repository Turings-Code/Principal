if(global.valvulaalfa){
	instance_destroy();}

if (turing_sobe && instance_exists(obj_turing)) {
    obj_turing.y -= turing_vel;
    obj_turing.sprite_index = spr_turingcima;

    if (obj_turing.y <= turing_alvo_y) {
        obj_turing.y = turing_alvo_y;
        turing_sobe = false;
		obj_turing.sprite_index = spr_turingparado;
        dialogos = dialogos_turing;
        dialogo_index = 0;
        nome = dialogos[dialogo_index].nome;
        frase = dialogos[dialogo_index].frase;
        contador_texto = 0;
        mostrar_texto = true;
        texto_acelerado = false;
        caixadetexto = true;
    }
}

if (delay_inicio > 0) {
    delay_inicio -= 1;
    if (delay_inicio <= 0) {
        dialogo_index = 0;
        nome = dialogos[dialogo_index].nome;
        frase = dialogos[dialogo_index].frase;
        contador_texto = 0;
        mostrar_texto = true;
        texto_acelerado = false;
        caixadetexto = true;
    }
}

if (keyboard_check(vk_control) && keyboard_check(vk_shift) && keyboard_check_pressed(ord("Z"))) {
    if (caixadetexto && dialogos == dialogos_turing) {
        dialogo_index = array_length(dialogos) - 1;
        nome = dialogos[dialogo_index].nome;
        frase = dialogos[dialogo_index].frase;
        contador_texto = string_length(frase);
        mostrar_texto = true;
        texto_acelerado = false;
        pausa_timer = 0;
    }
}

var _falando = (mostrar_texto && contador_texto < string_length(frase) && pausa_timer <= 0 && caixadetexto);

if (_falando) {
    if (!audio_is_playing(snd_textblip)) {
        som_blip_id = audio_play_sound(snd_textblip, 10, true);
    }
    if (texto_acelerado) {
        audio_sound_pitch(som_blip_id, 1.2);
    } else {
        audio_sound_pitch(som_blip_id, 1);
    }
} else {
    if (audio_is_playing(snd_textblip)) {
        audio_stop_sound(snd_textblip);
    }
}

if (caixadetexto) {
var _cam = view_camera[0];
var _alvo = noone;

if (nome == "Theo" && instance_exists(obj_theo)) {
    _alvo = obj_theo;
}
else if (nome == "Alan" && instance_exists(obj_alan)) {
    _alvo = obj_alan;
}
else if ((nome == "Turing" || nome == "???") && instance_exists(obj_turing)) {
    _alvo = obj_turing;
}

var _w = camera_get_view_width(_cam);
var _h = camera_get_view_height(_cam);

var _centro_x = camera_get_view_x(_cam) + _w / 2 - shake_ox;
var _centro_y = camera_get_view_y(_cam) + _h / 2 - shake_oy;

var _w_alvo = (_alvo != noone) ? 1170 : 1365;
var _h_alvo = (_alvo != noone) ? 660 : 770;

_w = lerp(_w, _w_alvo, cam_zoom_vel);
_h = lerp(_h, _h_alvo, cam_zoom_vel);

if (abs(_w - _w_alvo) < 0.5) _w = _w_alvo;
if (abs(_h - _h_alvo) < 0.5) _h = _h_alvo;

if (_alvo != noone) {
        _centro_x = lerp(_centro_x, (_alvo.bbox_left + _alvo.bbox_right) / 2, cam_vel);
    _centro_y = lerp(_centro_y, (_alvo.bbox_top + _alvo.bbox_bottom) / 2, cam_vel);
} else if (instance_exists(obj_alan)) {
    _centro_x = lerp(_centro_x, obj_alan.x, cam_vel);
    _centro_y = lerp(_centro_y, obj_alan.y, cam_vel);
}

if (shake_ativo) {
    shake_t += 1;
    shake_ox = sin(shake_t * 0.9) * shake_forca;
    shake_oy = cos(shake_t * 1.3) * shake_forca;
} else {
    shake_ox = 0;
    shake_oy = 0;
}

camera_set_view_size(_cam, _w, _h);
camera_set_view_pos(_cam, _centro_x - _w / 2 + shake_ox, _centro_y - _h / 2 + shake_oy);
}