if (fase10 == 1 && instance_exists(obj_theo)) {
    var _dx = theo_alvo_x - obj_theo.x;
    var _dy = theo_alvo_y - obj_theo.y;
    var _dist = point_distance(obj_theo.x, obj_theo.y, theo_alvo_x, theo_alvo_y);

    if (_dist <= theo_vel) {
        obj_theo.x = theo_alvo_x;
        obj_theo.y = theo_alvo_y;
        obj_theo.sprite_index = spr_theoparado;
        fase10 = 2;
        espera10 = espera10_tempo;
    } else {
        var _dir = point_direction(obj_theo.x, obj_theo.y, theo_alvo_x, theo_alvo_y);
        obj_theo.x += lengthdir_x(theo_vel, _dir);
        obj_theo.y += lengthdir_y(theo_vel, _dir);

        if (abs(_dx) > abs(_dy)) {
            obj_theo.sprite_index = (_dx > 0) ? spr_theodireita : spr_theoesquerda;
        } else {
            obj_theo.sprite_index = (_dy > 0) ? spr_theobaixo : spr_theocima;
        }
    }
}

if (fase10 == 4 && instance_exists(obj_mainha)) {
    obj_mainha.y -= mae_vel;
    obj_mainha.sprite_index = spr_maebaixo;
    obj_mainha.depth = -obj_mainha.y;
}

if (saida10) {
    var _limite = room_height + 100;

    if (instance_exists(obj_mainha)) {
        obj_mainha.y += saida_vel;
        obj_mainha.sprite_index = spr_maebaixo;
        obj_mainha.depth = -obj_mainha.y;
        if (obj_mainha.y > _limite) {
            with (obj_mainha) instance_destroy();
        }
    }

    if (instance_exists(obj_theo)) {
        if (theo_saida_fase == 1) {
            var _dx2 = theo_ponto_x - obj_theo.x;
            var _dy2 = theo_ponto_y - obj_theo.y;

            if (point_distance(obj_theo.x, obj_theo.y, theo_ponto_x, theo_ponto_y) <= saida_vel) {
                obj_theo.x = theo_ponto_x;
                obj_theo.y = theo_ponto_y;
                theo_saida_fase = 2;
            } else {
                var _d2 = point_direction(obj_theo.x, obj_theo.y, theo_ponto_x, theo_ponto_y);
                obj_theo.x += lengthdir_x(saida_vel, _d2);
                obj_theo.y += lengthdir_y(saida_vel, _d2);

                if (abs(_dx2) > abs(_dy2)) {
                    obj_theo.sprite_index = (_dx2 > 0) ? spr_theodireita : spr_theoesquerda;
                } else {
                    obj_theo.sprite_index = (_dy2 > 0) ? spr_theobaixo : spr_theocima;
                }
            }
        }
        else if (theo_saida_fase == 2) {
			if(instance_exists(obj_theo)){
            obj_theo.y += saida_vel;
            obj_theo.sprite_index = spr_theobaixo;
            if (obj_theo.y > _limite) {
                with (obj_theo) instance_destroy();
            }
        }}
		if(instance_exists(obj_theo)){
        obj_theo.depth = -obj_theo.y;}
    }

    if (!instance_exists(obj_mainha) && !instance_exists(obj_theo)) {
    saida10 = false;
    cutscene = false;

    if (instance_exists(obj_alan)) {
        obj_alan.travado = false;

        if (!instance_exists(obj_troca)) {
            var _t = instance_create_layer(obj_alan.x, obj_alan.y, "Instances", obj_troca);
            _t.image_xscale = 5;
            _t.image_yscale = 5;
        }
    }
}
}