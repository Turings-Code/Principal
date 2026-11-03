if (andando8) {
    if (instance_exists(obj_alan)) {
        obj_alan.travado = true;
        obj_alan.y -= vel_andar8;
        obj_alan.sprite_index = spr_alancima;
    }
    if (instance_exists(obj_theo)) {
        obj_theo.y -= vel_andar8;
        obj_theo.sprite_index = spr_theocima;
    }
    if (instance_exists(obj_turing)) {
        obj_turing.y -= vel_andar8;
        obj_turing.sprite_index = spr_turingcima;
    }

    if (!instance_exists(obj_turing) || obj_turing.y <= alvo_y_turing8) {
        andando8 = false;
		if(!obj_alan.theosegue){
        if (instance_exists(obj_alan)) obj_alan.sprite_index = spr_alanparadocima;
        if (instance_exists(obj_theo)) obj_theo.sprite_index = spr_theoparadocima;
        if (instance_exists(obj_turing)) obj_turing.sprite_index = spr_turingparadocima;}
        espera8 = espera8_tempo;
    }
}
else if (instance_exists(obj_theo) && instance_exists(obj_alan) && !caixadetexto && !obj_alan.theosegue) {
    obj_theo.sprite_index = spr_theoparadocima;
}