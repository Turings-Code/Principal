if (instance_exists(obj_quadro) || instance_exists(obj_piano) || instance_exists(obj_cofre)
    || instance_exists(obj_enigma1) || instance_exists(obj_enigma2) || instance_exists(obj_enigma3)
    || instance_exists(obj_folha1)) {
    scr_collision_move(0, 0);
    exit;
}

var move_x = 0;
var move_y = 0;

if (room == rm_mansao) {
	vel = 9; }
else if (room == rm_bletchley) {
	vel = 7; }
else if (room == rm_hut8) {
	vel = 9; }
else if (room == rm_quarto) {
	vel = 7; }
else if (room == rm_hut6) {
	vel = 9; }

var vel_y = vel;
if (room == rm_mansao && x >= 100 && x <= 500 && y >= 1660 && y <= 2300) {
    vel_y -= 2;
}

if (keyboard_check(ord("S"))) {
    move_y = vel_y;
    sprite_index = spr_alanbaixo;
    direcao = "cima";
}
if (keyboard_check(ord("W"))) {
    move_y = -(vel_y);
    sprite_index = spr_alancima;
    direcao = "baixo";
}
if (keyboard_check(ord("A"))) {
    move_x = -(vel);
    sprite_index = spr_alanesquerda;
    direcao = "esquerda";
}
if (keyboard_check(ord("D"))) {
    move_x = vel;
    sprite_index = spr_alandireita;
    direcao = "direita";
}

if (move_x != 0 && move_y != 0) {
    move_x *= 0.9;
    move_y *= 0.9;
}

if (move_x == 0 && move_y == 0) {
    if (direcao == "cima") {
        sprite_index = spr_alanparado;
    }
    else if (direcao == "baixo") {
        sprite_index = spr_alanparadocima;
    }
    else if (direcao == "esquerda") {
        sprite_index = spr_alanparadoesquerda;
    }
    else if (direcao == "direita") {
        sprite_index = spr_alanparadodireita;
    }
}

// --- ÍCONES E / F (só um aparece por vez) ---
var perto_e = (instance_exists(obj_aparecee) && distance_to_object(obj_aparecee) < 80);
var perto_f = (instance_exists(obj_aparecef) && distance_to_object(obj_aparecef) < 80);

var mostrar_e = perto_e;
var mostrar_f = perto_f;

// se estiver perto dos dois, vence o mais próximo
if (perto_e && perto_f) {
    var _ae = instance_nearest(x, y, obj_aparecee);
    var _af = instance_nearest(x, y, obj_aparecef);

    if (point_distance(x, y, _ae.x, _ae.y) <= point_distance(x, y, _af.x, _af.y)) {
        mostrar_f = false;
    } else {
        mostrar_e = false;
    }
}

// --- letra E ---
if (mostrar_e) {
    var _ae2 = instance_nearest(x, y, obj_aparecee);
    var _ex = _ae2.x + offset_letrae_x;
    var _ey = _ae2.y + offset_letrae_y;

    if (!instance_exists(obj_letrae)) {
        instance_create_layer(_ex, _ey, "Instances", obj_letrae);
    } else {
        obj_letrae.fading_out = false;
        obj_letrae.x = _ex;
        obj_letrae.y = _ey;
    }
} else if (instance_exists(obj_letrae)) {
    obj_letrae.fading_out = true;
}

// --- letra F ---
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

// --- E perto de um obj_pianoaparece (ou filho): cria o piano ---
if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_pianoaparece)) {
    if (distance_to_object(obj_pianoaparece) < 80 && !instance_exists(obj_piano)) {
        instance_create_depth(0, 0, -20000, obj_piano);
    }
}

// --- E perto de um obj_cofreaparece (ou filho): cria o cofre ---
if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_cofreaparece)) {
    if (distance_to_object(obj_cofreaparece) < 80 && !instance_exists(obj_cofre)) {
        instance_create_depth(0, 0, -20000, obj_cofre);
    }
}

// --- E perto de um obj_enigmaXaparece (ou filho): cria o enigma correspondente ---
if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae)) {
    if (instance_exists(obj_enigma1aparece) && distance_to_object(obj_enigma1aparece) < 80 && !instance_exists(obj_enigma1)) {
        instance_create_depth(0, 0, -20000, obj_enigma1);
    }
    else if (instance_exists(obj_enigma2aparece) && distance_to_object(obj_enigma2aparece) < 80 && !instance_exists(obj_enigma2)) {
        instance_create_depth(0, 0, -20000, obj_enigma2);
    }
    else if (instance_exists(obj_enigma3aparece) && distance_to_object(obj_enigma3aparece) < 80 && !instance_exists(obj_enigma3)) {
        instance_create_depth(0, 0, -20000, obj_enigma3);
    }
}

if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_folhas)) {
    if (distance_to_object(obj_folhas) < 80 && !instance_exists(obj_folha1)) {
        var _cam = view_camera[0];
        var _fx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
        var _fy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;
        instance_create_depth(_fx-200, _fy-70, -20000, obj_folha1);
		instance_create_depth(_fx+120, _fy+30, -20000, obj_folha2);
		instance_create_depth(0, 0, -19000, obj_escurece);
    }
}
scr_collision_move(move_x, move_y);
depth = -y;