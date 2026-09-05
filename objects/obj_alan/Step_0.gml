var move_x = 0;
var move_y = 0;
if (room == rm_turing) {
	vel = 7; }
else if (room == rm_bletchley) {
	vel = 7; }
else if (room == rm_hust8) {
	vel = 2; }

if (keyboard_check(ord("S"))) {
    move_y = vel;
    sprite_index = Sprite1_1;
    direcao = "cima";
}
else if (keyboard_check(ord("W"))) {
    move_y = -(vel);
    sprite_index = Sprite1_2;
    direcao = "baixo";
}
else if (keyboard_check(ord("A"))) {
    move_x = -(vel);
    sprite_index = Sprite1_E;
    direcao = "esquerda";
}
else if (keyboard_check(ord("D"))) {
    move_x = vel;
    sprite_index = Sprite1_D;
    direcao = "direita";
}
else {
    if (direcao == "cima") {
        sprite_index = Sprite1;
    }
    else if (direcao == "baixo") {
        sprite_index = Sprite2;
    }
    else if (direcao == "esquerda") {
        sprite_index = SpriteE;
    }
    else if (direcao == "direita") {
        sprite_index = SpriteD;
    }
}

scr_collision_move(move_x, move_y);

depth = -y;