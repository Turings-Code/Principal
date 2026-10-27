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

if (global.valvulaalfa) {
    dialogo_turing_valvula = false;
    dialogo_alan_valvula = false;

    if (instance_exists(obj_alancutscenehut8)) {
        with (obj_alancutscenehut8) instance_destroy();
    }

if (!dialogo_final_feito && !caixadetexto && !cutscene
&& instance_exists(obj_alan) && instance_exists(obj_turinghut8)
&& instance_exists(obj_alancutscene)
&& point_distance(obj_alan.x, obj_alan.y, obj_turinghut8.x, obj_turinghut8.y) < 170
&& keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae)) {
    global.theojogando = false;

    var _ax = obj_alan.x;
    var _ay = obj_alan.y;
    var _bx = obj_alancutscene.x;
    var _by = obj_alancutscene.y;

    with (obj_alancutscene) instance_destroy();

    obj_alan.travado = true;
    obj_alan.direcao = "cima";
    obj_alan.sprite_index = spr_alanparado;
    obj_alan.image_xscale = 8;
    obj_alan.image_yscale = 8;
    obj_alan.x = _bx;
    obj_alan.y = _by;

    if (!instance_exists(obj_theo)) {
        instance_create_layer(_ax, _ay, "Instances", obj_theo);
    }

    with (obj_theo) {
        x = _ax;
        y = _ay;
        visible = true;
    }

    dialogo_final_feito = true;
    dialogos = dialogos_final;
    iniciar_dialogo = true;
    cutscene = true;
	
}
} else {
    if (dialogo_turing_valvula && !caixadetexto && !cutscene) {
        dialogo_turing_valvula = false;
        dialogos = [
            { nome: "Turing", frase: "Já conseguiu pegar a Válvula Alfa?" }
        ];
        iniciar_dialogo = true;
        cutscene = true;
    }

    if (dialogo_alan_valvula && !caixadetexto && !cutscene) {
        dialogo_alan_valvula = false;
        dialogos = [
            { nome: "Alan", frase: "Eai Theo já conseguiu achar a válvula?" }
        ];
        iniciar_dialogo = true;
        cutscene = true;
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


if (dialogo_final_feito && !caixadetexto && !iniciar_dialogo && !troca_final_feita) {
    troca_final_feita = true;

    global.theojogando = false;

    if (instance_exists(obj_alan)) {
        var _ax = obj_alan.x;
        var _ay = obj_alan.y;

        if (instance_exists(obj_alancutscene)) {
            obj_alan.x = obj_alancutscene.x;
            obj_alan.y = obj_alancutscene.y;
            with (obj_alancutscene) instance_destroy();
        }

        obj_alan.direcao = "cima";
        obj_alan.sprite_index = spr_alanparado;
        obj_alan.travado = false;
		obj_alan.theosegue=true;

        instance_create_layer(_ax, _ay, "Instances", obj_theo);
    }

    if (instance_exists(obj_turinghut8)) {
        with (obj_turinghut8) instance_destroy();
    }

    global.turing_saida_hut8 = true;

    var _bloco = collision_point(1084, 1798, obj_collisionblock, false, true);

    if (_bloco != noone) {
        with (_bloco) instance_destroy();
    }

    cutscene = false;
}