var _spawn = obj_trocaroom.usar_spawn;
if (_spawn) {
    x = obj_trocaroom.spawn_x;
    y = obj_trocaroom.spawn_y;
    obj_trocaroom.usar_spawn = false;
}

if (room == rm_mansao) {
    if (!_spawn) { x = 1100; y = 2200; }
    image_xscale = 1;
    image_yscale = 1;
}

if (room == rm_bletchley) {
    if (!_spawn) { x = 1320; y = 760; }
    image_xscale = 0.7;
    image_yscale = 0.7;
}

if (room == rm_hut8) {
    x = 888;
    y = 2124;
    theosegue = false;
    image_xscale = 1;
    image_yscale = 1;
}

if (room == rm_hut6) {
    x = 1900;
    y = 1500;
    image_xscale = 1;
    image_yscale = 1;
}

if (room == rm_bletchley2) {
    image_xscale = 0.7;
    image_yscale = 0.7;
    if (obj_trocaroom.quartopara2) {
        x = 1170;
        y = 400;
        travado = true;
        obj_trocaroom.quartopara2 = false;
        direcao = "baixo";
        sprite_index = spr_alanparado;
        image_index = 0;
    }
}

if (room != rm_quarto && !(room == rm_bletchley2 && travado)) {
    travado = false;
}