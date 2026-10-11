var move_x = 0;
var move_y = 0;

if (room == rm_mansao) {
	vel = 9; }
else if (room == rm_bletchley) {
	vel = 7; }
else if (room == rm_hut8) {
	vel = 7; }
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
var perto_folhas = (instance_exists(obj_folhas) && distance_to_object(obj_folhas) < 60);
var perto_tempf = (instance_exists(obj_tempf) && distance_to_object(obj_tempf) < 60);

var mostrar_e = perto_folhas;
var mostrar_f = perto_tempf;

// se estiver perto dos dois, vence o mais próximo
if (perto_folhas && perto_tempf) {
    var _folha = instance_nearest(x, y, obj_folhas);
    var _tempf = instance_nearest(x, y, obj_tempf);

    if (point_distance(x, y, _folha.x, _folha.y) <= point_distance(x, y, _tempf.x, _tempf.y)) {
        mostrar_f = false;
    } else {
        mostrar_e = false;
    }
}

// --- letra E (folhas) ---
if (mostrar_e) {
    var _folha = instance_nearest(x, y, obj_folhas);
    var _ex = _folha.x + offset_letrae_x;
    var _ey = _folha.y + offset_letrae_y;

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

// --- letra F (tempf) ---
if (mostrar_f) {
    var _tempf = instance_nearest(x, y, obj_tempf);
    var _fx = _tempf.x + offset_letraf_x;
    var _fy = _tempf.y + offset_letraf_y;

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

scr_collision_move(move_x, move_y);
depth = -y;