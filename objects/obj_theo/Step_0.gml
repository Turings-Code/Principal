depth = -y;
if (!instance_exists(obj_alan)) exit;

// Se Theo não deve seguir, limpa o histórico
if (!obj_alan.theosegue) {
    historico_x = [obj_alan.x];
    historico_y = [obj_alan.y];
	if(!instance_exists(obj_cutscene5)){
    sprite_index = spr_theoparado;}
    depth = -y;
    exit;
}

var _tam = array_length(historico_x);

historico_x[_tam] = obj_alan.x;
historico_y[_tam] = obj_alan.y;

// Limita o histórico para não crescer infinitamente
if (array_length(historico_x) > 300) {
    historico_x = array_delete(historico_x, 0, 1);
    historico_y = array_delete(historico_y, 0, 1);
}

// Espera ter histórico suficiente para seguir com atraso
if (array_length(historico_x) <= atraso_passos) {
    sprite_index = spr_theoparado;
    depth = -y;
    exit;
}

// Escolhe uma posição antiga do Alan
var _indice = array_length(historico_x) - 1 - atraso_passos;

var _alvo_x = historico_x[_indice];
var _alvo_y = historico_y[_indice];

// Calcula a direção e a distância até o alvo
var _dist = point_distance(x, y, _alvo_x, _alvo_y);

if (_dist > velocidade) {
    var _direcao = point_direction(x, y, _alvo_x, _alvo_y);

    var _novo_x = x + lengthdir_x(velocidade, _direcao);
    var _novo_y = y + lengthdir_y(velocidade, _direcao);

    var _dist_alan = point_distance(
        _novo_x, _novo_y,
        obj_alan.x, obj_alan.y
    );

    var _dist_atual = point_distance(
        x, y,
        obj_alan.x, obj_alan.y
    );

    // Não permite que Theo se aproxime demais do Alan
    if (_dist_alan >= distancia_minima || _dist_alan > _dist_atual) {
        var _dx = _novo_x - x;
        var _dy = _novo_y - y;

        scr_collisiontheo(_novo_x - x, _novo_y - y);

        // Escolhe o sprite conforme o movimento
        if (abs(_dx) > abs(_dy)) {
            if (_dx > 0) {
                sprite_index = spr_theodireita;
            } else {
                sprite_index = spr_theoesquerda;
            }
        } else {
            if (_dy > 0) {
                sprite_index = spr_theobaixo;
            } else {
                sprite_index = spr_theocima;
            }
        }
    } else {
        sprite_index = spr_theoparado;
    }
} else {
    sprite_index = spr_theoparado;
}

