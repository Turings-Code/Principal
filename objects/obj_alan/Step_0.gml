/*show_debug_message(
    string(device_mouse_x_to_gui(0)) + "x" +
    string(device_mouse_y_to_gui(0))
);*/
//show_debug_message(distance_to_object(obj_turinghut8));
/*show_debug_message("alan:" + string(image_xscale));
if(instance_exists(obj_theo)){
show_debug_message("theo:" + string(obj_theo.image_xscale));}
if(instance_exists(obj_turing)){
show_debug_message("turing:" + string(obj_turing.image_xscale));}
if(instance_exists(obj_alancutscene)){
show_debug_message("turing:" + string(obj_alancutscene.image_xscale));}*/


depth = -y;

var _baixo = global.theojogando ? spr_theobaixo : spr_alanbaixo;
var _cima = global.theojogando ? spr_theocima : spr_alancima;
var _esquerda = global.theojogando ? spr_theoesquerda : spr_alanesquerda;
var _direita = global.theojogando ? spr_theodireita : spr_alandireita;
var _parado = global.theojogando ? spr_theoparado : spr_alanparado;
var _parado_cima = global.theojogando ? spr_theoparadocima : spr_alanparadocima;
var _parado_esquerda = global.theojogando ? spr_theoparadoesquerda : spr_alanparadoesquerda;
var _parado_direita = global.theojogando ? spr_theoparadodireita : spr_alanparadodireita;



if (variable_instance_exists(id, "travado") && travado) {
    scr_collision_move(0, 0);
	if (audio_is_playing(snd_passosgrama)) audio_stop_sound(snd_passosgrama);
if (audio_is_playing(snd_passospedra)) audio_stop_sound(snd_passospedra);
    exit;
}

if (instance_exists(obj_quadro) || instance_exists(obj_piano) || instance_exists(obj_cofre)
    || instance_exists(obj_enigma1) || instance_exists(obj_enigma2) || instance_exists(obj_enigma3)
    || instance_exists(obj_folha1) || instance_exists(obj_radio)) || instance_exists(obj_xeroxaltoamp) || instance_exists(obj_rotatorbase) || instance_exists(obj_radiofundo) || instance_exists(obj_codigofinalhut6){
    scr_collision_move(0, 0);
	if (audio_is_playing(snd_passosgrama)) audio_stop_sound(snd_passosgrama);
if (audio_is_playing(snd_passospedra)) audio_stop_sound(snd_passospedra);
    exit;
}



var move_x = 0;
var move_y = 0;

if (room == rm_mansao) {
    vel = 35;
} else if (room == rm_bletchley) {
    vel = 35;
} else if (room == rm_bletchley2) {
    vel = 35;
} else if (room == rm_hut8) {
    vel = 35;
} else if (room == rm_quarto) {
    vel = 7;
} else if (room == rm_hut6) {
    vel = 35;
}

var vel_y = vel;

if (room == rm_mansao && x >= 100 && x <= 500 && y >= 1660 && y <= 2300) {
    vel_y -= 2;
}

if (keyboard_check(ord("S"))) {
    move_y = vel_y;
    sprite_index = _baixo;
    direcao = "cima";
}

if (keyboard_check(ord("W"))) {
    move_y = -vel_y;
    sprite_index = _cima;
    direcao = "baixo";
}

if (keyboard_check(ord("A"))) {
    move_x = -vel;
    sprite_index = _esquerda;
    direcao = "esquerda";
}

if (keyboard_check(ord("D"))) {
    move_x = vel;
    sprite_index = _direita;
    direcao = "direita";
}

if (move_x != 0 && move_y != 0) {
    move_x *= 0.9;
    move_y *= 0.9;
}

if (move_x == 0 && move_y == 0) {
    if (direcao == "cima") {
        sprite_index = _parado;
    } else if (direcao == "baixo") {
        sprite_index = _parado_cima;
    } else if (direcao == "esquerda") {
        sprite_index = _parado_esquerda;
    } else if (direcao == "direita") {
        sprite_index = _parado_direita;
    }
}

var perto_e = instance_exists(obj_aparecee) && distance_to_object(obj_aparecee) < 80;
var perto_f = instance_exists(obj_aparecef) && distance_to_object(obj_aparecef) < 80;

var mostrar_e = perto_e;
var mostrar_f = perto_f;

if (perto_e && perto_f) {
    var _ae = instance_nearest(x, y, obj_aparecee);
    var _af = instance_nearest(x, y, obj_aparecef);

    if (point_distance(x, y, _ae.x, _ae.y) <= point_distance(x, y, _af.x, _af.y)) {
        mostrar_f = false;
    } else {
        mostrar_e = false;
    }
}

if (mostrar_e) {
    var _ae2 = instance_nearest(x, y, obj_aparecee);
    var _ex = _ae2.x + offset_letrae_x;
    var _ey = _ae2.y + offset_letrae_y;

    if (!instance_exists(obj_letrae)) {
    instance_create_layer(_ex, _ey, "Instances", obj_letrae);
    audio_play_sound(snd_interacao, 0.5, false);
} else {
    if (obj_letrae.x != _ex || obj_letrae.y != _ey) {
        audio_play_sound(snd_interacao, 0.5, false);
    }
    obj_letrae.fading_out = false;
    obj_letrae.x = _ex;
    obj_letrae.y = _ey;
}
} else if (instance_exists(obj_letrae)) {
    obj_letrae.fading_out = true;
}

if (mostrar_f) {
    var _af2 = instance_nearest(x, y, obj_aparecef);
    var _fx = _af2.x + offset_letraf_x;
    var _fy = _af2.y + offset_letraf_y;

    if (!instance_exists(obj_letraf)) {
        instance_create_layer(_fx, _fy, "Instances", obj_letraf);
    } else {
        obj_letraf.fading_out = false;
        obj_letraf.x = _fx;
        obj_letraf.y = _fy;
    }
} else if (instance_exists(obj_letraf)) {
    obj_letraf.fading_out = true;
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_quadroaparece)) {
    if (distance_to_object(obj_quadroaparece) < 80 && !instance_exists(obj_quadro)) {
        instance_create_depth(0, 0, -20000, obj_quadro);
    }
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_pianoaparece)) {
    if (distance_to_object(obj_pianoaparece) < 80 && !instance_exists(obj_piano)) {
        instance_create_depth(0, 0, -20000, obj_piano);
    }
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_cofreaparece)) {
    if (distance_to_object(obj_cofreaparece) < 80 && !instance_exists(obj_cofre)) {
        instance_create_depth(0, 0, -20000, obj_cofre);
    }
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_radioaparece)) {
    if (distance_to_object(obj_radioaparece) < 80 && !instance_exists(obj_radio)) {
        instance_create_depth(0, 0, -20000, obj_radio);
    }
}
if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_caixadeenergiaaparece)) {
    if (distance_to_object(obj_caixadeenergiaaparece) < 80 && !instance_exists(obj_caixadeenergia)) {
		
		obj_theo.x=593;obj_theo.y=2351;
        instance_create_depth(0, 0, -20000, obj_caixadeenergia);
    }
}
if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_folhabinarioaparece)) {
    if (distance_to_object(obj_folhabinarioaparece) < 80 && !instance_exists(obj_folhabinarios)) {
        var _cam = view_camera[0];
        var _vx = camera_get_view_x(_cam);
        var _vy = camera_get_view_y(_cam);

        instance_create_depth(_vx + 500, _vy + 450, -20000, obj_folhabinarios);
        instance_create_depth(_vx + 1200, _vy + 200, -21000, obj_codigofinalhut6);

        if (instance_exists(obj_codigo2hut6)) {
            obj_codigo2hut6.x = _vx + 750;
            obj_codigo2hut6.y = _vy + 350;
            obj_codigo2hut6.fading_out = false;
            obj_codigo2hut6.depth = -20000;
        } else {
            instance_create_depth(_vx + 1200, _vy + 650, -21000, obj_codigo2hut6);
        }

        instance_create_depth(0, 0, -19000, obj_escurece);
    }
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_xeroxaltoaparece)) {
    if (distance_to_object(obj_xeroxaltoaparece) < 80 && !instance_exists(obj_xeroxaltoamp)) {
		if(obj_cutscene5.xeroxaltocriado){ instance_create_depth(0, 0, -20000, obj_xeroxaltoamp);}
		if (instance_exists(obj_cutscene5) && !obj_cutscene5.dialogo2_iniciado) {
			obj_objetivos.define_objetivo("");
            obj_cutscene5.dialogo2_iniciado = true;
            obj_cutscene5.dialogo2_ativo = true;
            obj_cutscene5.dialogos = obj_cutscene5.dialogos2;
            obj_cutscene5.iniciar_dialogo = true;
        }
    }
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae)) {
    if (instance_exists(obj_enigma1aparece) && distance_to_object(obj_enigma1aparece) < 80 && !instance_exists(obj_enigma1)) {
        instance_create_depth(0, 0, -20000, obj_enigma1);
    } else if (instance_exists(obj_enigma2aparece) && distance_to_object(obj_enigma2aparece) < 80 && !instance_exists(obj_enigma2) && obj_controladorenigmas.enigma1) {
        instance_create_depth(0, 0, -20000, obj_enigma2);
    } else if (instance_exists(obj_enigma3aparece) && distance_to_object(obj_enigma3aparece) < 80 && !instance_exists(obj_enigma3) && obj_controladorenigmas.enigma2) {
        instance_create_depth(0, 0, -20000, obj_enigma3);
    }
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_folhas)) {
    if (distance_to_object(obj_folhas) < 80 && !instance_exists(obj_folha1)) {
        var _cam = view_camera[0];
        var _fx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
        var _fy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;
        instance_create_depth(_fx - 200, _fy - 150, -20000, obj_folha1);
        instance_create_depth(_fx + 250, _fy - 150, -20000, obj_folha2);
        instance_create_depth(_fx + 40, _fy - 20, -20000, obj_folha3);
        instance_create_depth(_fx - 150, _fy + 150, -20000, obj_folha2);
        instance_create_depth(_fx + 200, _fy + 150, -20000, obj_folha4);
        instance_create_depth(_fx - 50, _fy, -20000, obj_folha5);
        instance_create_depth(_fx + 250, _fy, -20000, obj_folha1);
        instance_create_depth(0, 0, -19000, obj_escurece);
    }
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_folhas2)) {
    if (distance_to_object(obj_folhas2) < 80 && !instance_exists(obj_folha1)) {
        var _cam = view_camera[0];
        var _fx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
        var _fy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;
        instance_create_depth(_fx - 180, _fy - 130, -20000, obj_folha1);
        instance_create_depth(_fx + 220, _fy - 140, -20000, obj_folha2);
        instance_create_depth(_fx + 30, _fy - 30, -20000, obj_folha3);
        instance_create_depth(_fx - 140, _fy + 130, -20000, obj_folha2);
        instance_create_depth(_fx + 180, _fy + 140, -20000, obj_folha4);
        instance_create_depth(_fx - 60, _fy + 10, -20000, obj_folha5);
        instance_create_depth(_fx + 210, _fy + 10, -20000, obj_folha1);
        instance_create_depth(0, 0, -19000, obj_escurece);
    }
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_folhas3)) {
    if (distance_to_object(obj_folhas3) < 80 && !instance_exists(obj_folha1)) {
        var _cam = view_camera[0];
        var _fx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
        var _fy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;
        instance_create_depth(_fx + 170, _fy + 70, -20000, obj_folha1);
        instance_create_depth(_fx - 200, _fy - 30, -20000, obj_folha2);
        instance_create_depth(_fx + 10, _fy + 150, -20000, obj_folha3);
        instance_create_depth(_fx + 190, _fy - 130, -20000, obj_folha2);
        instance_create_depth(_fx - 120, _fy - 190, -20000, obj_folha4);
        instance_create_depth(_fx + 40, _fy - 30, -20000, obj_folha5);
        instance_create_depth(_fx - 150, _fy + 90, -20000, obj_folha1);
        instance_create_depth(_fx + 150, _fy - 30, -20000, obj_folha4);
		if(!global.codigohut6){
        instance_create_depth(_fx, _fy + 100, -19000, obj_codigo);}
        instance_create_depth(0, 0, -19000, obj_escurece);
    }
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_folhas4)) {
    if (distance_to_object(obj_folhas4) < 80 && !instance_exists(obj_folha1)) {
        var _cam = view_camera[0];
        var _fx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
        var _fy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;

        instance_create_depth(_fx - 140, _fy - 110, -20000, obj_folha1);
        instance_create_depth(_fx + 150, _fy - 100, -20000, obj_folha2);
        instance_create_depth(_fx + 40, _fy + 100, -20000, obj_folha3);
        instance_create_depth(_fx - 110, _fy + 90, -20000, obj_folha2);
        instance_create_depth(_fx + 120, _fy + 40, -20000, obj_folha4);
        instance_create_depth(_fx - 20, _fy - 20, -20000, obj_folha5);
		if(!global.fragmento2&&obj_cutscene8.tipo_dialogo<5){
        instance_create_depth(_fx, _fy, -20000, obj_fragmento2);}
        instance_create_depth(0, 0, -19000, obj_escurece);
    }
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_folhas5)) {
    if (distance_to_object(obj_folhas5) < 80 && !instance_exists(obj_folha1)) {
        var _cam = view_camera[0];
        var _fx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
        var _fy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;

        instance_create_depth(_fx - 100, _fy - 100, -20000, obj_folha1);
instance_create_depth(_fx + 100, _fy - 100, -20000, obj_folha2);
instance_create_depth(_fx + 100, _fy + 100, -20000, obj_folha3);
instance_create_depth(_fx - 100, _fy + 100, -20000, obj_folha2);
instance_create_depth(_fx + 30, _fy - 130, -20000, obj_folha4);
instance_create_depth(_fx - 30, _fy + 130, -20000, obj_folha5);
if(!global.fragmento3&&obj_cutscene8.tipo_dialogo<5){
instance_create_depth(_fx, _fy, -20000, obj_fragmento3);}
    }
}

scr_collision_move(move_x, move_y);


var _andando = move_x != 0 || move_y != 0;
var _na_grama = place_meeting(x, y, obj_passosgrama);

if (_andando) {
    if (place_meeting(x, y, obj_passosmadeira)) {
        if (audio_is_playing(snd_passosgrama)) audio_stop_sound(snd_passosgrama);
        if (audio_is_playing(snd_passospedra)) audio_stop_sound(snd_passospedra);
        if (audio_is_playing(snd_passostapete)) audio_stop_sound(snd_passostapete);

        if (!audio_is_playing(snd_passosmadeira)) {
            audio_play_sound(snd_passosmadeira, 1, true);
        }
    }
    else if (place_meeting(x, y, obj_passostapete)) {
        if (audio_is_playing(snd_passosgrama)) audio_stop_sound(snd_passosgrama);
        if (audio_is_playing(snd_passospedra)) audio_stop_sound(snd_passospedra);
        if (audio_is_playing(snd_passosmadeira)) audio_stop_sound(snd_passosmadeira);

        if (!audio_is_playing(snd_passostapete)) {
            audio_play_sound(snd_passostapete, 1, true);
        }
    }
    else if (_na_grama) {
        if (audio_is_playing(snd_passospedra)) audio_stop_sound(snd_passospedra);
        if (audio_is_playing(snd_passosmadeira)) audio_stop_sound(snd_passosmadeira);
        if (audio_is_playing(snd_passostapete)) audio_stop_sound(snd_passostapete);

        if (!audio_is_playing(snd_passosgrama)) {
            audio_play_sound(snd_passosgrama, 1, true);
            audio_sound_pitch(snd_passosgrama, 1.5);
            audio_sound_gain(snd_passosgrama, 0.5, 0);
        }
    }
    else {
        if (audio_is_playing(snd_passosgrama)) audio_stop_sound(snd_passosgrama);
        if (audio_is_playing(snd_passosmadeira)) audio_stop_sound(snd_passosmadeira);
        if (audio_is_playing(snd_passostapete)) audio_stop_sound(snd_passostapete);

        if (!audio_is_playing(snd_passospedra)) {
            audio_play_sound(snd_passospedra, 1, true);
            audio_sound_gain(snd_passospedra, 0.3, 0);
        }
    }
}
else {
    if (audio_is_playing(snd_passosgrama)) audio_stop_sound(snd_passosgrama);
    if (audio_is_playing(snd_passospedra)) audio_stop_sound(snd_passospedra);
    if (audio_is_playing(snd_passosmadeira)) audio_stop_sound(snd_passosmadeira);
    if (audio_is_playing(snd_passostapete)) audio_stop_sound(snd_passostapete);
}