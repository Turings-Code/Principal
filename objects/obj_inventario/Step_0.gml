if(instance_exists(obj_cutscene2)){if(!obj_cutscene2.cutscene) exit;}
if(instance_exists(obj_cutscene3)){if(obj_cutscene3.cutscene) exit;}
if(instance_exists(obj_cutscene4)){if(obj_cutscene4.cutscene) exit;}
if(instance_exists(obj_cutscene5)){if(obj_cutscene5.cutscene) exit;}

var _popup = instance_exists(obj_quadro) || instance_exists(obj_piano) || instance_exists(obj_cofre)
          || instance_exists(obj_enigma1) || instance_exists(obj_enigma2) || instance_exists(obj_enigma3)
          || instance_exists(obj_folhasenigma) || instance_exists(obj_mapahut6) || instance_exists(obj_radio) || instance_exists(obj_radiofundo);

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

var _m = array_get_index(itens, spr_iconemapahut6);
if (global.mapahut6 && _m == -1 && array_length(itens) < max_slots) {
    array_push(itens, spr_iconemapahut6);
}
else if (!global.mapahut6 && _m != -1) {
    array_delete(itens, _m, 1);
}

var _ch = array_get_index(itens, spr_iconecodigohut6);
if (global.codigohut6 && _ch == -1 && array_length(itens) < max_slots) {
    array_push(itens, spr_iconecodigohut6);
}
else if (!global.codigohut6 && _ch != -1) {
    array_delete(itens, _ch, 1);
}

var _va = array_get_index(itens, spr_iconevalalfa);
if (global.valvulaalfa && _va == -1 && array_length(itens) < max_slots) {
    array_push(itens, spr_iconevalalfa);
}
else if (!global.valvulaalfa && _va != -1) {
    array_delete(itens, _va, 1);
}

var _vb = array_get_index(itens, spr_iconevabeta);
if (global.valvulabeta && _vb == -1 && array_length(itens) < max_slots) {
    array_push(itens, spr_iconevabeta);
}
else if (!global.valvulabeta && _vb != -1) {
    array_delete(itens, _vb, 1);
}

if (aberto && !abriu_agora && !_popup && mouse_check_button_pressed(mb_left)
&& !instance_exists(obj_folhasenigma) && !instance_exists(obj_mapahut6)) {
    for (var _n = 0; _n < array_length(itens); _n++) {
        var _col, _lin;
        if (_n < 4) {
            _col = 0;
            _lin = _n + 1;
        } else {
            _col = 1;
            _lin = _n - 4;
        }
        var _x1 = x + _col * cell_w;
        var _y1 = y + _lin * cell_h;
        if (point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x1 + cell_w, _y1 + cell_h)) {
            if (itens[_n] == spr_iconefolhasenigma) {
                instance_create_depth(0, 0, -20000, obj_folhasenigma);
            }
            else if (itens[_n] == spr_iconemapahut6) {
                instance_create_depth(0, 0, -20000, obj_mapahut6);
            }
            break;
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