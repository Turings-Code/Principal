var move_x = 0;
var move_y = 0;

if (room == rm_turing) {
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
if (room == rm_turing && x >= 100 && x <= 500 && y >= 1660 && y <= 2300) {
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



scr_collision_move(move_x, move_y);
depth = -y;