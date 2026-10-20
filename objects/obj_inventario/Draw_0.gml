if (instance_exists(obj_cutscene2)) exit;
var _esc = image_xscale;

// tamanho da célula = tamanho do ícone da mochila na escala atual
cell_w = sprite_get_width(spr_iconemochila) * _esc;
cell_h = sprite_get_height(spr_iconemochila) * _esc;

// mochila: célula (linha 1, coluna 1)
if (aberto) {
    draw_sprite_ext(spr_iconemochilaab, 0, x, y, _esc, _esc, 0, c_white, image_alpha);
} else {
    draw_sprite_ext(spr_iconemochila, 0, x, y, _esc, _esc, 0, c_white, image_alpha);
}

if (aberto) {
    // itens: enche a coluna 1 de cima pra baixo, depois a coluna 2
    for (var i = 0; i < array_length(itens); i++) {
        var _col, _lin;
        if (i < 3) {
            _col = 0;
            _lin = i + 1;   // linha 2, 3, 4 da coluna 1
        } else {
            _col = 1;
            _lin = i - 3;   // linha 1, 2, 3, 4 da coluna 2
        }
        draw_sprite_ext(itens[i], 0, x + _col * cell_w, y + _lin * cell_h, _esc, _esc, 0, c_white, 1);
    }
}