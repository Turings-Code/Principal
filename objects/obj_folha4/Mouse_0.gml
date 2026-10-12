if (fading_out) exit;
if (!mouse_check_button_pressed(mb_left)) exit;
if (global.folha_arrastada != noone) exit;

var _topo = noone;
var _menor = 999999;

with (obj_folha1) {
    if (!fading_out && position_meeting(mouse_x, mouse_y, id) && depth < _menor) {
        _menor = depth;
        _topo = id;
    }
}
with (obj_folha2) {
    if (!fading_out && position_meeting(mouse_x, mouse_y, id) && depth < _menor) {
        _menor = depth;
        _topo = id;
    }
}
with (obj_folha3) {
    if (!fading_out && position_meeting(mouse_x, mouse_y, id) && depth < _menor) {
        _menor = depth;
        _topo = id;
    }
}
with (obj_folha4) {
    if (!fading_out && position_meeting(mouse_x, mouse_y, id) && depth < _menor) {
        _menor = depth;
        _topo = id;
    }
}

if (_topo == id) {
    global.folha_arrastada = id;
    off_x = x - mouse_x;
    off_y = y - mouse_y;

    // traz a folha pega pra frente
    depth = -50000;
    with (obj_folha1) if (id != other.id) depth = -49000;
    with (obj_folha2) if (id != other.id) depth = -49000;
    with (obj_folha3) if (id != other.id) depth = -49000;
    with (obj_folha4) if (id != other.id) depth = -49000;
}