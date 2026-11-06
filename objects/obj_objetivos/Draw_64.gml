if (texto == "") exit;
if (instance_exists(obj_cutscene3)) { if (obj_cutscene3.caixadetexto) { exit; } }
if (instance_exists(obj_cutscene4)) { if (obj_cutscene4.caixadetexto) { exit; } }
if (instance_exists(obj_cutscene5)) { if (obj_cutscene5.caixadetexto) { exit; } }
if (instance_exists(obj_cutscene8)) { if (obj_cutscene8.caixadetexto) { exit; } }
if (instance_exists(obj_cutscene9)) {if(obj_cutscene9.cutscene) exit;}
if (instance_exists(obj_cutscene10)) {if(obj_cutscene10.cutscene) exit;}
if(room==rm_transicao1||room==rm_transicao2||room==rm_quarto2||room==rm_menu||room==rm_creditos2) exit;

var _popup = instance_exists(obj_quadro) || instance_exists(obj_piano) || instance_exists(obj_cofre)
          || instance_exists(obj_enigma1) || instance_exists(obj_enigma2) || instance_exists(obj_enigma3)
          || instance_exists(obj_folhasenigma) || instance_exists(obj_mapahut6) || instance_exists(obj_radio) || instance_exists(obj_radiofundo) || instance_exists(obj_caixadeenergia) || instance_exists(obj_menupause) || instance_exists(obj_xeroxaltoamp);

if (_popup) exit;

var _cam = view_camera[0];
var _f = display_get_gui_width() / camera_get_view_width(_cam);

var _x = margem_x * _f;
var _y = margem_y * _f;
var _escala = ((room == rm_bletchley2 || room == rm_hut8 || room == rm_hut6 || room == rm_mansao || room == rm_salafinal) ? 1 : 0.7) * _f;
var _escala_etapa = _escala * 0.7;

draw_set_font(fnt_fonte);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(alpha * 0.7);
draw_text_transformed(_x, _y, texto, _escala, _escala, 0);

var _linha = string_height("A") * _escala + 8 * _f;
var _linha_etapa = string_height("A") * _escala_etapa + 4 * _f;
var _ey = _y + _linha;

for (var i = 0; i < array_length(etapas); i++) {
    var _etapa_y = _ey + i * _linha_etapa;
    var _t = etapas[i].texto;

    draw_text_transformed(_x + 5 * _f, _etapa_y, _t, _escala_etapa, _escala_etapa, 0);

    if (etapas[i].feita) {
        var _largura = string_width(_t) * _escala_etapa;
        var _meio_y = _etapa_y + string_height(_t) * _escala_etapa * 0.5;
        draw_line_width(_x + 5 * _f, _meio_y, _x + 5 * _f + _largura, _meio_y, 2 * _f);
    }
}

draw_set_alpha(1);