if (!global.codigohut6) {
    if (!instance_exists(bloco_fase1)) {
        bloco_fase1 = instance_create_layer(1233, 274, "Instances", obj_collisionblocktemp);
        bloco_fase1.image_xscale = 2;
        bloco_fase1.image_yscale = 6;
    }
} else if (instance_exists(bloco_fase1)) {
    instance_destroy(bloco_fase1);
    bloco_fase1 = noone;
}

if (turingentrahut6) {
	
	if (fase_alan_hut6 == 0 && instance_exists(obj_alan)) {
    obj_alan.travado = true;

    var _dx = 500 - obj_alan.x;
    var _dy = 564 - obj_alan.y;
    var _dist = point_distance(obj_alan.x, obj_alan.y, 500, 564);
    var _vel = 4;

    if (_dist > _vel) {
        obj_alan.x += (_dx / _dist) * _vel;
        obj_alan.y += (_dy / _dist) * _vel;
		obj_alan.depth = -obj_alan.y;

        if (abs(_dx) > abs(_dy)) {
            obj_alan.sprite_index = spr_alandireita;
        } else {
            obj_alan.sprite_index = spr_alanbaixo;
        }
    } else {
        obj_alan.x = 500;
        obj_alan.y = 564;
        obj_alan.direcao = "baixo";
        obj_alan.sprite_index = spr_alanparado;
        obj_alan.image_index = 0;
        fase_alan_hut6 = 2;
    }
}
	
    if (fase_entrada_hut6 == 0) {
        if (!instance_exists(obj_turing)) {
            instance_create_layer(338, -130, "Instances", obj_turing);
        }

        if (!instance_exists(obj_theo)) {
            instance_create_layer(338, -150, "Instances", obj_theo);
        }

        fase_entrada_hut6 = 1;
    }

    if (instance_exists(obj_turing)) {
        if (fase_entrada_hut6 == 1) {
            obj_turing.sprite_index = spr_turingbaixo;
            obj_turing.y += vel_entrada_hut6;

            if (obj_turing.y > 370) {
                obj_turing.y = 370;
                fase_entrada_hut6 = 2;
            }
        }

        if (fase_entrada_hut6 == 2) {
            obj_turing.sprite_index = spr_turingdireita;
            obj_turing.x += vel_entrada_hut6;

            if (obj_turing.x >= 588) {
                obj_turing.x = 588;
                obj_turing.sprite_index = spr_turingparado;
                fase_entrada_hut6 = 3;
            }
        }
    }

    if (instance_exists(obj_theo) && fase_entrada_hut6 == 3) {
    obj_theo.x = 338;
    obj_theo.sprite_index = spr_theobaixo;
    obj_theo.y += vel_entrada_hut6;

    if (obj_theo.y >= 370) {
        obj_theo.y = 370;
        obj_theo.sprite_index = spr_theoparado;
        fase_entrada_hut6 = 4;
		dialogos = dialogos1;
        iniciar_dialogo = true;
    }
}
}

if (fase_saida_turing == 1 && instance_exists(obj_turing)) {
    obj_turing.sprite_index = spr_turingbaixo;
    obj_turing.y = min(obj_turing.y + vel_entrada_hut6, alvo_y_turing);

    if (obj_turing.y >= alvo_y_turing) {
        alvo_x_turing = obj_turing.x + 600;
        fase_saida_turing = 2;
    }
}

if (fase_saida_turing == 2 && instance_exists(obj_turing)) {
    obj_turing.sprite_index = spr_turingdireita;
    obj_turing.x = min(obj_turing.x + vel_entrada_hut6, alvo_x_turing);

    if (obj_turing.x >= alvo_x_turing) {
        obj_turing.sprite_index = spr_turingparado;
        obj_turing.image_index = 0;
        fase_saida_turing = 3;
    }
}

if (instance_exists(obj_radio) && !radio_dialogo_feito) {
    radio_dialogo_feito = true;
    radio_timer = 60;
	obj_objetivos.define_objetivo("");
}

if (radio_timer > 0) {
    radio_timer--;

    if (radio_timer <= 0) {
        dialogos = dialogos_radio;
        dialogo_radio = true;
        iniciar_dialogo = true;
    }
}

if (iniciar_dialogo) {
    iniciar_dialogo = false;
    dialogo_index = 0;
    nome = dialogos[dialogo_index].nome;
    frase = dialogos[dialogo_index].frase;
    contador_texto = 0;
    mostrar_texto = true;
    texto_acelerado = false;
    caixadetexto = true;
    cutscene = true;
    if (instance_exists(obj_alan)) obj_alan.travado = true;
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