if(instance_exists(obj_cutscene2)){if(!obj_cutscene2.cutscene) exit;}
if(instance_exists(obj_cutscene3)){if(obj_cutscene3.cutscene) exit;}

var _popup = instance_exists(obj_quadro) || instance_exists(obj_piano) || instance_exists(obj_cofre)
          || instance_exists(obj_enigma1) || instance_exists(obj_enigma2) || instance_exists(obj_enigma3)
          || instance_exists(obj_folhasenigma);

if (!_popup && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    aberto = !aberto;
    abriu_agora = true;
    audio_play_sound(snd_inventario, 1, false);
}

var _i = array_get_index(itens, spr_iconechave);
if (global.chave && _i == -1 && array_length(itens) < max_slots) {
    array_push(itens, spr_iconechave);
}
else if (!global.chave && _i != -1) {
    array_delete(itens, _i, 1);
}

var _p = array_get_index(itens, spr_iconepapel);
if (global.papel && _p == -1 && array_length(itens) < max_slots) {
    array_push(itens, spr_iconepapel);
}
else if (!global.papel && _p != -1) {
    array_delete(itens, _p, 1);
}

var _f = array_get_index(itens, spr_iconefolhasenigma);
if (global.folhasenigma && _f == -1 && array_length(itens) < max_slots) {
    array_push(itens, spr_iconefolhasenigma);
}
else if (!global.folhasenigma && _f != -1) {
    array_delete(itens, _f, 1);
}

if (aberto && !abriu_agora && !_popup && mouse_check_button_pressed(mb_left) && !instance_exists(obj_folhasenigma)) {
    var _idx = array_get_index(itens, spr_iconefolhasenigma);
    if (_idx != -1) {
        var _col, _lin;
        if (_idx < 4) {
            _col = 0;
            _lin = _idx + 1;
        } else {
            _col = 1;
            _lin = _idx - 4;
        }
        var _x1 = x + _col * cell_w;
        var _y1 = y + _lin * cell_h;
        if (point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x1 + cell_w, _y1 + cell_h)) {
            instance_create_depth(0, 0, -20000, obj_folhasenigma);
        }
    }
}
abriu_agora = false;

var _sobre = position_meeting(mouse_x, mouse_y, id);
var _sobre_item = false;

if (aberto) {
    for (var _k = 0; _k < array_length(itens); _k++) {
        var _c, _l;
        if (_k < 4) {
            _c = 0;
            _l = _k + 1;
        } else {
            _c = 1;
            _l = _k - 4;
        }
        var _ix = x + _c * cell_w;
        var _iy = y + _l * cell_h;
        if (point_in_rectangle(mouse_x, mouse_y, _ix, _iy, _ix + cell_w, _iy + cell_h)) {
            _sobre_item = true;
            break;
        }
    }
}

if ((_sobre || _sobre_item) && !_popup) {
	if(instance_exists(obj_cursormouse)){
    obj_cursormouse.mao = true;}
}