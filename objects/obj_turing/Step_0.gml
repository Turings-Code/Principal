if (room == rm_bletchley2) {
    if (instance_exists(obj_cutscene2)) {
        if (!obj_cutscene2.cutscene) exit;
    }

    if (andando) {
        if (ponto_atual >= array_length(pontos_x) - 2) {
            sprite_index = spr_turingdireita;
        } else {
            sprite_index = spr_turingbaixo;
        }

        var _dist = point_distance(x, y, alvo_x, alvo_y);

        if (_dist <= velocidade_andar) {
            x = alvo_x;
            y = alvo_y;

            if (ponto_atual >= array_length(pontos_x) - 1) {
                instance_destroy();
                exit;
            }

            andando = false;
            sprite_index = spr_turingparado;
        } else {
            var _direcao = point_direction(x, y, alvo_x, alvo_y);
            x += lengthdir_x(velocidade_andar, _direcao);
            y += lengthdir_y(velocidade_andar, _direcao);
        }
    } else {
        if (instance_exists(obj_alan)) {
            if (distance_to_object(obj_alan) <= distancia_alan) {
                if (ponto_atual < array_length(pontos_x) - 1) {
                    ponto_atual += 1;
                    alvo_x = pontos_x[ponto_atual];
                    alvo_y = pontos_y[ponto_atual];
                    andando = true;
                }
            }
        }
    }
} else {
    if (global.turing_saida_hut8) {
        sprite_index = spr_turingbaixo;
        y = min(y + 3, 2330);
		x-=2;

        if (y >= 2330) {
            y = 2330;
            global.turing_saida_hut8 = false;

            var _troca = instance_create_layer(716, 2220, "Instances", obj_troca);
            _troca.image_xscale = 23;
            _troca.image_yscale = 9;

            instance_destroy();
            exit;
        }
    }
}

depth = -y;