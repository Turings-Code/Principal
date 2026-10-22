if (texto == "") exit;
if(instance_exists(obj_cutscene3)){if (obj_cutscene3.caixadetexto){ exit;}}

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
    var _etapa_y = _ey + i * _linha_etapa;

    draw_text_transformed(_x + 5, _etapa_y, etapas[i], _escala_etapa, _escala_etapa, 0);

    if (i == 0 && global.codigos_descriptografados) {
        var _largura = string_width(etapas[i]) * _escala_etapa;
        var _meio_y = _etapa_y + string_height(etapas[i]) * _escala_etapa * 0.5;

        draw_line_width(_x + 5, _meio_y, _x + 5 + _largura, _meio_y, 2);
    }
}

draw_set_alpha(1);