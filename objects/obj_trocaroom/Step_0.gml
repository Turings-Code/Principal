var _t1 = false;
var _t2 = false;
var _t3 = false;

if (instance_exists(obj_alan)) {
    with (obj_alan) {
        _t1 = place_meeting(x, y, obj_troca);
        _t2 = place_meeting(x, y, obj_troca2);
        _t3 = place_meeting(x, y, obj_troca3);
    }
}

if (room != room_anterior) {
    estado = "saindo";
    room_anterior = room;
}

if (estado == "nenhum" && instance_exists(obj_alan)) {
    var _ax = obj_alan.x;

    if (room == rm_mansao && _t1) {
        dest_room = rm_bletchley;
        usar_spawn = false;
        estado = "entrando";
    }
    else if (room == rm_quarto && _t1) {
        quartopara2 = true;
        dest_room = rm_bletchley2;
        usar_spawn = false;
        estado = "entrando";
        audio_play_sound(snd_futuro, 0.5, false);
    }
    else if (room == rm_hut8 && _t1) {
        dest_room = rm_bletchley2;
        spawn_x = 2220;
        spawn_y = 2660;
        usar_spawn = true;
        estado = "entrando";
    }
    else if (room == rm_hut6 && _t1) {
        dest_room = rm_bletchley;
        usar_spawn = false;
        estado = "entrando";
    }
    else if (room == rm_bletchley) {
        if (_t3) {
            dest_room = rm_hut8;
            usar_spawn = false;
            estado = "entrando";
        }
        else if (_t2) {
            dest_room = rm_bletchley2;
            spawn_x = 100;
            spawn_y = 1670;
            usar_spawn = true;
            estado = "entrando";
        }
        else if (_t1 && _ax > 2500) {
            dest_room = rm_bletchley2;
            spawn_x = 100;
            spawn_y = 1050;
            usar_spawn = true;
            estado = "entrando";
        }
        else if (_t1 && _ax > 1600 && _ax < 2200) {
            dest_room = rm_hut6;
            usar_spawn = false;
            estado = "entrando";
        }
        else if (_t1 && _ax < 1600) {
            dest_room = rm_mansao;
            usar_spawn = false;
            estado = "entrando";
        }
    }
    else if (room == rm_bletchley2) {
        if (_t3) {
            dest_room = rm_hut8;
            usar_spawn = false;
            estado = "entrando";
        }
        else if (_t2) {
            dest_room = rm_bletchley;
            spawn_x = 2900;
            spawn_y = 1670;
            usar_spawn = true;
            estado = "entrando";
        }
        else if (_t1) {
            dest_room = rm_bletchley;
            spawn_x = 2900;
            spawn_y = 1000;
            usar_spawn = true;
            estado = "entrando";
        }
    }
}

if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
        room_goto(dest_room);
    }
}

if (estado == "saindo") {
    alpha -= 0.02;
    if (alpha <= 0) {
        alpha = 0;
        estado = "nenhum";
    }
}