if (!iniciou_dialogo && instance_exists(obj_turing) && obj_turing.turingparoucutscene4) {
    iniciou_dialogo = true;
    iniciar_dialogo = true;
    cutscene = true;
    if (instance_exists(obj_alan)) obj_alan.travado = true;
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
}

if (
    nome == "Turing"
    && frase == "Tenho um mapa da Hut 6 pra te ajudar."
    && !mapa_hut6_entregue
) {
    mapa_hut6_entregue = true;

    if (instance_exists(obj_inventario)) {
        obj_inventario.nome_item = "Mapa Hut 6";
        obj_inventario.ganhouitem = true;
		global.mapahut6=true;
    }

    audio_play_sound(snd_itemnovo, 1, false);
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

if (turing_saindo && instance_exists(obj_turing)) {
    var _dx = turing_dest_x - obj_turing.x;
    var _dy = turing_dest_y - obj_turing.y;

    if (abs(_dx) > abs(_dy)) {
        obj_turing.sprite_index = (_dx > 0) ? spr_turingdireita : spr_turingesquerda;
    } else {
        obj_turing.sprite_index = (_dy > 0) ? spr_turingbaixo : spr_turingcima;
    }

    var _dist = point_distance(obj_turing.x, obj_turing.y, turing_dest_x, turing_dest_y);

    if (_dist <= turing_vel_saida) {
        turing_saindo = false;
        with (obj_turing) instance_destroy();
        instance_create_layer(4065, 1752, "Instances", obj_troca4);
    } else {
        var _dir = point_direction(obj_turing.x, obj_turing.y, turing_dest_x, turing_dest_y);
        obj_turing.x += lengthdir_x(turing_vel_saida, _dir);
        obj_turing.y += lengthdir_y(turing_vel_saida, _dir);
    }
}