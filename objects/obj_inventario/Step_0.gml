

// algum popup aberto? (inventário não responde)
var _popup = instance_exists(obj_quadro) || instance_exists(obj_piano) || instance_exists(obj_cofre)
          || instance_exists(obj_enigma1) || instance_exists(obj_enigma2) || instance_exists(obj_enigma3);

// abrir/fechar clicando no ícone
if (!_popup && mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    aberto = !aberto;
}

// chave
var _i = array_get_index(itens, spr_iconechave);
if (global.chave && _i == -1 && array_length(itens) < max_slots) {
    array_push(itens, spr_iconechave);
}
else if (!global.chave && _i != -1) {
    array_delete(itens, _i, 1);
}

// papel
var _p = array_get_index(itens, spr_iconepapel);
if (global.papel && _p == -1 && array_length(itens) < max_slots) {
    array_push(itens, spr_iconepapel);
}
else if (!global.papel && _p != -1) {
    array_delete(itens, _p, 1);
}

var _sobre = position_meeting(mouse_x, mouse_y, id);

if (_sobre && !_popup) {
    window_set_cursor(cr_handpoint);
} else {
    window_set_cursor(cr_default);
}