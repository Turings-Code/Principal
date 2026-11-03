depth = -y;
if (!instance_exists(obj_alan)) exit;

if (!obj_alan.theosegue) {
    historico_x = [obj_alan.x];
    historico_y = [obj_alan.y];
    if (!instance_exists(obj_cutscene5)) {
        sprite_index = spr_theoparado;
    }
    exit;
}

var _tam = array_length(historico_x);
historico_x[_tam] = obj_alan.x;
historico_y[_tam] = obj_alan.y;

if (array_length(historico_x) > 300) {
    array_delete(historico_x, 0, 1);
    array_delete(historico_y, 0, 1);
}

if (array_length(historico_x) <= atraso_passos) {
    sprite_index = spr_theoparado;
    exit;
}

var _indice = array_length(historico_x) - 1 - atraso_passos;
var _alvo_x = historico_x[_indice];
var _alvo_y = historico_y[_indice];

if (grade == -1 || grade_room != room) {
    if (grade != -1) mp_grid_destroy(grade);
    if (grade_fino != -1) mp_grid_destroy(grade_fino);
    grade = mp_grid_create(0, 0, ceil(room_width / cel), ceil(room_height / cel), cel, cel);
    grade_fino = mp_grid_create(0, 0, ceil(room_width / cel), ceil(room_height / cel), cel, cel);
    grade_room = room;
    grade_timer = 0;
}

grade_timer--;
if (grade_timer <= 0) {
    grade_timer = 30;
    mp_grid_clear_all(grade);
    mp_grid_clear_all(grade_fino);

    with (obj_collisionblock) {
        mp_grid_add_rectangle(other.grade, bbox_left - other.margem_grade, bbox_top - other.margem_grade, bbox_right + other.margem_grade, bbox_bottom + other.margem_grade);
        mp_grid_add_rectangle(other.grade_fino, bbox_left - other.margem_fina, bbox_top - other.margem_fina, bbox_right + other.margem_fina, bbox_bottom + other.margem_fina);
    }
    with (obj_collisionblocktemp) {
        mp_grid_add_rectangle(other.grade, bbox_left - other.margem_grade, bbox_top - other.margem_grade, bbox_right + other.margem_grade, bbox_bottom + other.margem_grade);
        mp_grid_add_rectangle(other.grade_fino, bbox_left - other.margem_fina, bbox_top - other.margem_fina, bbox_right + other.margem_fina, bbox_bottom + other.margem_fina);
    }
    caminho_timer = 0;
}

var _largo = collision_circle(x, y, 0, obj_collisionblock, false, true) != noone;

var _linha_livre = true;
var _passos_l = ceil(point_distance(x, y, _alvo_x, _alvo_y) / 24);

for (var s = 1; s <= _passos_l; s++) {
    var _t = s / _passos_l;
    var _lx = lerp(x, _alvo_x, _t);
    var _ly = lerp(y, _alvo_y, _t);
    if (place_meeting_ext(_lx, _ly)) {
        _linha_livre = false;
        break;
    }
}

if (!_linha_livre) {
    usando_caminho = true;
} else if (usando_caminho && _linha_livre) {
    usando_caminho = false;
}

var _px = _alvo_x;
var _py = _alvo_y;
var _mover = true;

if (usando_caminho) {
    caminho_timer--;

    if (caminho_timer <= 0) {
        caminho_timer = 10;
        mp_grid_clear_rectangle(grade, x - cel, y - cel, x + cel, y + cel);
        mp_grid_clear_rectangle(grade, _alvo_x - cel, _alvo_y - cel, _alvo_x + cel, _alvo_y + cel);
        caminho_ok = mp_grid_path(grade, caminho, x, y, _alvo_x, _alvo_y, true);
    }

    if (caminho_ok) {
        var _n = path_get_number(caminho);
        var _i = min(1, _n - 1);

        _px = path_get_point_x(caminho, _i);
        _py = path_get_point_y(caminho, _i);

        if (point_distance(x, y, _px, _py) < velocidade * 2 && _i < _n - 1) {
            _px = path_get_point_x(caminho, _i + 1);
            _py = path_get_point_y(caminho, _i + 1);
        }
    } else {
        _mover = false;
    }
} else {
    caminho_ok = false;
    caminho_timer = 0;
}

var _dist = point_distance(x, y, _px, _py);

if (_mover && _dist > velocidade) {
    var _direcao = point_direction(x, y, _px, _py);
    var _novo_x = x + lengthdir_x(velocidade, _direcao);
    var _novo_y = y + lengthdir_y(velocidade, _direcao);

    var _dist_alan = point_distance(_novo_x, _novo_y, obj_alan.x, obj_alan.y);
    var _dist_atual = point_distance(x, y, obj_alan.x, obj_alan.y);

    if (_dist_alan >= distancia_minima || _dist_alan > _dist_atual) {
        var _dx = _novo_x - x;
        var _dy = _novo_y - y;

        scr_collisiontheo(_dx, _dy);

        if (abs(_dx) > abs(_dy)) {
            sprite_index = (_dx > 0) ? spr_theodireita : spr_theoesquerda;
        } else {
            sprite_index = (_dy > 0) ? spr_theobaixo : spr_theocima;
        }
    } else {
        sprite_index = spr_theoparado;
    }
} else {
    sprite_index = spr_theoparado;
}

