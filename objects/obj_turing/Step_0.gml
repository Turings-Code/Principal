depth = -y;

if (saida7_ativa) {
    sprite_index = spr_turingcima;
    y = max(y - velocidade_andar, saida7_alvo_y);
    depth = -y;

    if (y <= saida7_alvo_y) {
        instance_destroy();
    }
    exit;
}

if (room == rm_bletchley && iniciar_caminho7) {
    iniciar_caminho7 = false;
    caminho7_ativo = true;
    andando7 = true;
    ponto7_atual = 0;
}

if (room == rm_bletchley && caminho7_ativo) {
    if (andando7) {
        var _dx7 = pontos7_x[ponto7_atual] - x;
        var _dy7 = pontos7_y[ponto7_atual] - y;
        var _dist7 = point_distance(x, y, pontos7_x[ponto7_atual], pontos7_y[ponto7_atual]);

        if (abs(_dx7) > abs(_dy7)) {
            sprite_index = (_dx7 > 0) ? spr_turingdireita : spr_turingesquerda;
        } else {
            sprite_index = (_dy7 > 0) ? spr_turingbaixo : spr_turingcima;
        }

        if (_dist7 <= velocidade_andar) {
            x = pontos7_x[ponto7_atual];
            y = pontos7_y[ponto7_atual];
            andando7 = false;
            sprite_index = spr_turingparado;

            if (ponto7_atual == array_length(pontos7_x) - 1) {
    caminho7_ativo = false;

    if (instance_exists(obj_cutscene7)) {
        obj_cutscene7.dialogo1 = true;
    }

    obj_objetivos.define_objetivo(" ");
    obj_objetivos.define_etapas([]);

    exit;
}
        } else {
            var _dir7 = point_direction(x, y, pontos7_x[ponto7_atual], pontos7_y[ponto7_atual]);
            x += lengthdir_x(velocidade_andar, _dir7);
            y += lengthdir_y(velocidade_andar, _dir7);
        }
    } else if (instance_exists(obj_alan)) {
        if (distance_to_object(obj_alan) <= distancia_alan) {
            ponto7_atual++;
            andando7 = true;
        }
    }

    depth = -y;
    exit;
}

if (iniciar_caminho6) {
    iniciar_caminho6 = false;
    caminho6_ativo = true;
    ponto6_atual = 0;
    andando6 = true;
}

if (caminho6_ativo) {
    if (andando6) {
        var _dx = pontos6_x[ponto6_atual] - x;
        var _dy = pontos6_y[ponto6_atual] - y;
        var _dist = point_distance(x, y, pontos6_x[ponto6_atual], pontos6_y[ponto6_atual]);

        if (abs(_dx) > abs(_dy)) {
            sprite_index = (_dx > 0) ? spr_turingdireita : spr_turingesquerda;
        } else {
            sprite_index = (_dy > 0) ? spr_turingbaixo : spr_turingcima;
        }

        if (_dist <= velocidade_andar) {
            x = pontos6_x[ponto6_atual];
            y = pontos6_y[ponto6_atual];
            andando6 = false;
            sprite_index = spr_turingparado;

            if (ponto6_atual == array_length(pontos6_x) - 1) {
                instance_destroy();
                exit;
            }
        } else {
            var _dir = point_direction(x, y, pontos6_x[ponto6_atual], pontos6_y[ponto6_atual]);
            x += lengthdir_x(velocidade_andar, _dir);
            y += lengthdir_y(velocidade_andar, _dir);
        }
    } else if (instance_exists(obj_alan)) {
        if (distance_to_object(obj_alan) <= distancia_alan) {
            ponto6_atual++;
            andando6 = true;
        }
    }

    depth = -y;
    exit;
}
if (room == rm_bletchley2 && !global.valvulaalfa && !global.valvulabeta) {
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
            var _mx = lengthdir_x(velocidade_andar, _direcao);
var _my = lengthdir_y(velocidade_andar, _direcao);

if (!place_meeting(x + _mx, y + _my, obj_alan)) {
    x += _mx;
    y += _my;
}
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
} else if (room == rm_bletchley2 && global.valvulaalfa && !global.valvulabeta) {
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
			x = alvo2_x;
			y = alvo2_y;
			andando2 = false;
			sprite_index = spr_turingparado;
			turingparoucutscene4 = true;
			//instance_create_layer(4065, 1752, "Instances", obj_troca4)
                //instance_destroy();
    exit;
}

            andando2 = false;
            sprite_index = spr_turingparado;
        } else {
            var _dir2 = point_direction(x, y, alvo2_x, alvo2_y);
            var _mx2 = lengthdir_x(velocidade_andar, _dir2);
var _my2 = lengthdir_y(velocidade_andar, _dir2);

if (!place_meeting(x + _mx2, y + _my2, obj_alan)) {
    x += _mx2;
    y += _my2;
}
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
        var _mx3 = -2;
var _my3 = min(y + 3, 2330) - y;

if (!place_meeting(x + _mx3, y + _my3, obj_alan)) {
    x += _mx3;
    y += _my3;
    preso_cont = 0;
} else if (!place_meeting(x, y + _my3, obj_alan)) {
    y += _my3;
    preso_cont = 0;
} else if (!place_meeting(x + _mx3, y, obj_alan)) {
    x += _mx3;
    preso_cont = 0;
} else {
    preso_cont++;
    if (preso_cont >= 30) {
        x += _mx3;
        y += _my3;
    }
}

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

if(saidamansao){
	sprite_index=spr_turingcima;
	y-=4;
	if(y<4700){
		saidamansao=false
		var _troca = instance_create_layer(1380, 4769, "Instances", obj_troca2);
_troca.image_xscale = 13;
_troca.image_yscale = 6;
		instance_destroy();}
}

if (salafinal) {
    if (andandof) {
        var _dxf = pontosf_x[pontof_atual] - x;
        var _dyf = pontosf_y[pontof_atual] - y;

        if (abs(_dxf) > abs(_dyf)) {
            sprite_index = (_dxf > 0) ? spr_turingdireita : spr_turingesquerda;
        } else {
            sprite_index = (_dyf > 0) ? spr_turingbaixo : spr_turingcima;
        }

        if (point_distance(x, y, pontosf_x[pontof_atual], pontosf_y[pontof_atual]) <= velocidade_andar) {
    x = pontosf_x[pontof_atual];
    y = pontosf_y[pontof_atual];
    andandof = false;
    sprite_index = spr_turingparado;

    if (pontof_atual >= array_length(pontosf_x) - 1) {
        if (!instance_exists(obj_falaturingfinal)) {
            instance_create_layer(x, y, "Instances", obj_falaturingfinal);
        }
		if(!bloco_criado){
		var _b = instance_create_layer(x-100, y-65, "Instances", obj_collisionblock);
_b.image_xscale = 3;
_b.image_yscale = 3;
bloco_criado=true;
}
    }
} else {
            var _dirf = point_direction(x, y, pontosf_x[pontof_atual], pontosf_y[pontof_atual]);
            var _mxf = lengthdir_x(velocidade_andar, _dirf);
            var _myf = lengthdir_y(velocidade_andar, _dirf);

            if (!place_meeting(x + _mxf, y + _myf, obj_alan)) {
                x += _mxf;
                y += _myf;
            }
        }
    } else if (instance_exists(obj_alan)) {
        if (pontof_atual < array_length(pontosf_x) - 1 && (pontof_atual < 0 || distance_to_object(obj_alan) <= distancia_alan)) {
            pontof_atual++;
            andandof = true;
        }
    }

    depth = -y;
    exit;
}
