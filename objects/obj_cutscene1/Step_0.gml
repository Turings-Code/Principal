if (maeentra) {
	if(!instance_exists(obj_mainha)){
		instance_create_layer(1050, 1080, "Instances", obj_mainha);}
    obj_mainha.y -= 5;
    if (obj_mainha.sprite_index != spr_maebaixo) {
        obj_mainha.sprite_index = spr_maebaixo;
    }
    if (obj_mainha.y <= 700) {
        acao1 = false;
        obj_mainha.y = 700;
        maeentra = false;

        dialogo_index = 0;
        nome = dialogos[dialogo_index].nome;
        frase = dialogos[dialogo_index].frase;
        caixadetexto = true;
    }
}
if (delay_antes > 0) {
    delay_antes -= 1;
    if (delay_antes <= 0) {
        alan_anda = true;
    }
}

if (alan_anda){
    if (instance_exists(obj_alancutscene)) {
        obj_alancutscene.x = max(obj_alancutscene.x - alan_vel, alan_alvo_x);
    }
    if (!instance_exists(obj_alancutscene) || obj_alancutscene.x <= alan_alvo_x) {
        alan_anda = false;
        delay_depois = delay_tempo;
    }
}

if (delay_depois > 0) {
    delay_depois -= 1;
    if (delay_depois <= 0) {
        dialogos = dialogos_mae;
        dialogo_index = 0;
        nome = dialogos[dialogo_index].nome;
        frase = dialogos[dialogo_index].frase;
        contador_texto = 0;
        mostrar_texto = true;
        texto_acelerado = false;
        caixadetexto = true;
    }
}
if (!acao1 && !maesai) {
    obj_mainha.sprite_index = spr_mae;
}

if (maesai) {
    obj_mainha.y += 5;
    obj_mainha.sprite_index = spr_alancima;

    if (obj_mainha.y > 1250) {
        maesai = false;
        alarm[2] = 180;
        fase = 2;
		if(instance_exists(obj_mainha)){with(obj_mainha){instance_destroy();}}
    }
}

if (theoentra) {
	if(!instance_exists(obj_theocutscene)){
		instance_create_layer(1050, 1080, "Instances", obj_theocutscene);}
    obj_theocutscene.y -= 5;
    obj_theocutscene.sprite_index = spr_theocima;

    if (obj_theocutscene.y <= 700) {
        obj_theocutscene.y = 700;
        obj_theocutscene.sprite_index = spr_theoparadobaixo;
        theoentra = false;

        dialogos = dialogos_theo;
        dialogo_index = 0;
        nome = dialogos[dialogo_index].nome;
        frase = dialogos[dialogo_index].frase;
        contador_texto = 0;
        mostrar_texto = true;
        texto_acelerado = false;
        caixadetexto = true;
    }
}

if (theoanda == 1) {
    obj_theocutscene.sprite_index = spr_theobaixo;
    obj_theocutscene.y = min(obj_theocutscene.y + theo_vel, theo_alvo_y);

    if (obj_theocutscene.y >= theo_alvo_y) theoanda = 2;
}
else if (theoanda == 2) {
    obj_theocutscene.sprite_index = spr_theoesquerda;
    obj_theocutscene.x = max(obj_theocutscene.x - theo_vel, theo_alvo_x);

    if (obj_theocutscene.x <= theo_alvo_x) {
        theoanda = 0;
        obj_theocutscene.sprite_index = spr_theoparadobaixo;
        alarm[3] = 60;

        if (!instance_exists(obj_objetivos)) {
            instance_create_depth(0, 0, -100000, obj_objetivos);
        }
        obj_objetivos.define_objetivo("OBJETIVO - Vá até o Theo");
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

if (!enigma_visto && instance_exists(obj_enigmaampl)) {
    enigma_visto = true;
    alarm[4] = 60;
}

if (quebrou_enigma) {
    quebrou_enigma = false;
    alarm[5] = 60;
}

if (puxando && instance_exists(puxa_alvo)) {
    puxa_vel += puxa_acel;

    var _px = puxa_alvo.x;
    var _py = puxa_alvo.y;
    var _chegou_alan = true;
    var _chegou_theo = true;

    if (instance_exists(obj_alan)) {
        var _d = point_distance(obj_alan.x, obj_alan.y, _px, _py);
        var _dir = point_direction(obj_alan.x, obj_alan.y, _px, _py);
        var _passo = min(puxa_vel, _d);
        obj_alan.x += lengthdir_x(_passo, _dir);
        obj_alan.y += lengthdir_y(_passo, _dir);
        _chegou_alan = (point_distance(obj_alan.x, obj_alan.y, _px, _py) < 1);
    }

    if (instance_exists(obj_theocutscene)) {
        var _d2 = point_distance(obj_theocutscene.x, obj_theocutscene.y, _px, _py);
        var _dir2 = point_direction(obj_theocutscene.x, obj_theocutscene.y, _px, _py);
        var _passo2 = min(puxa_vel, _d2);
        obj_theocutscene.x += lengthdir_x(_passo2, _dir2);
        obj_theocutscene.y += lengthdir_y(_passo2, _dir2);
        _chegou_theo = (point_distance(obj_theocutscene.x, obj_theocutscene.y, _px, _py) < 1);
    }

    if (_chegou_alan && _chegou_theo) {
        puxando = false;
        alarm[7] = 60;
    }
}

if (fase == 4) {
    if (dialogo_index >= 4) {
        shake_ativo = true;
        shake_forca = 2;
    }
    else if (dialogo_index >= 1) {
        shake_ativo = true;
        shake_forca = 0.7;
    }
}

var _cam = view_camera[0];
var _alvo = noone;
var _fixo = (fase == 3 && caixadetexto);

if (caixadetexto && !_fixo) {
    if (nome == "Mãe" && instance_exists(obj_mainha)) {
        _alvo = obj_mainha;
    }
    else if (nome == "Theo" && instance_exists(obj_theocutscene)) {
        _alvo = obj_theocutscene;
    }
    else if (nome == "Alan") {
        if (instance_exists(obj_alancutscene)) _alvo = obj_alancutscene;
        else if (instance_exists(obj_alan)) _alvo = obj_alan;
    }
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
    _centro_x = lerp(_centro_x, _alvo.x, cam_vel);
    _centro_y = lerp(_centro_y, _alvo.y, cam_vel);
} else {
    _centro_x = lerp(_centro_x, room_width / 2, cam_vel);
    _centro_y = lerp(_centro_y, room_height / 2, cam_vel);
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