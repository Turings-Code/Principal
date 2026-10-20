if (texto == "") exit;

var _cam = view_camera[0];
var _x = camera_get_view_x(_cam) + margem_x;
var _y = camera_get_view_y(_cam) + margem_y;
var _escala = (room == rm_bletchley2 || room == rm_hut8) ? 1 : 0.7;
var _escala_etapa = _escala * 0.7;

draw_set_font(fnt_fonte);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(alpha * 0.7);
draw_text_transformed(_x, _y, texto, _escala, _escala, 0);

var _linha = string_height("A") * _escala + 8;
var _linha_etapa = string_height("A") * _escala_etapa + 4;
var _ey = _y + _linha;

for (var i = 0; i < array_length(etapas); i++) {
    draw_text_transformed(_x + 5, _ey + i * _linha_etapa, etapas[i], _escala_etapa, _escala_etapa, 0);
}

draw_set_alpha(1);