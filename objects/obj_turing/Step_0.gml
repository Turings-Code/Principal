if (room == rm_bletchley2 && !global.valvulaalfa) {
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
} else if (room == rm_bletchley2 && global.valvulaalfa) {
    if (!iniciou2) {
    iniciou2 = true;
    x = 2500;
    y = 2700;
    sprite_index = spr_turingparado;
}

    if (andando2) {
        var _dx = alvo2_x - x;
        var _dy = alvo2_y - y;

        if (abs(_dx) > abs(_dy)) {
            sprite_index = (_dx > 0) ? spr_turingdireita : spr_turingesquerda;
        } else {
            sprite_index = (_dy > 0) ? spr_turingbaixo : spr_turingcima;
        }

        var _dist2 = point_distance(x, y, alvo2_x, alvo2_y);

        if (_dist2 <= velocidade_andar) {
            x = alvo2_x;
            y = alvo2_y;

            if (ponto2_atual >= array_length(pontos2_x) - 1) {
				instance_create_layer(4065, 1752, "Instances", obj_troca4)
                instance_destroy();
                exit;
            }

            andando2 = false;
            sprite_index = spr_turingparado;
        } else {
            var _dir2 = point_direction(x, y, alvo2_x, alvo2_y);
            x += lengthdir_x(velocidade_andar, _dir2);
            y += lengthdir_y(velocidade_andar, _dir2);
        }
    } else if (instance_exists(obj_alan)) {
        if (distance_to_object(obj_alan) <= distancia_alan) {
            if (ponto2_atual < array_length(pontos2_x) - 1) {
                ponto2_atual += 1;
                alvo2_x = pontos2_x[ponto2_atual];
                alvo2_y = pontos2_y[ponto2_atual];
                andando2 = true;
            }
        }
    }
} else {
    if (global.turing_saida_hut8) {
        sprite_index = spr_turingbaixo;
        obj_objetivos.define_objetivo("OBJETIVO - Siga o Turing");
        y = min(y + 3, 2330);
        x -= 2;

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