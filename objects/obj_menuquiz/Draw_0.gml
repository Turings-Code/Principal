var _cam = view_camera[0];
var _cx = camera_get_view_x(_cam);
var _cy = camera_get_view_y(_cam);
var _ex = camera_get_view_width(_cam) / display_get_gui_width();
var _ey = camera_get_view_height(_cam) / display_get_gui_height();
var _xa = instance_exists(obj_xeroxaltoamp) ? obj_xeroxaltoamp.image_alpha : 0;
var _cinza = make_color_rgb(137, 141, 155);

draw_set_font(fnt_fonte3);

var _ar = arearesultado;
var _codigo = "";
for (var i = 0; i < array_length(codigo_linhas); i++) {
    if (codigo_linhas[i].r < rodadas_completas) {
        _codigo += codigo_linhas[i].t + "\n";
    }
}

draw_set_color(_cinza);
draw_set_alpha(_xa);
if (!codigo_apagado) {
    desenha_texto_area(
        _codigo,
        _cx + (_ar[0] + resultado_margem_esq) * _ex, _cy + (_ar[1] + resultado_margem_topo) * _ey,
        _cx + (_ar[2] - resultado_margem_dir) * _ex, _cy + _ar[3] * _ey,
        codigo_escala, false
    );
} else {
    var _barra = ((current_time div 500) mod 2 == 0) ? "|" : " ";
var _linha = (etapa_tut < string_length(codigo_alvo) && erro_tut_timer <= 0) ? entrada_tut + _barra : "";

desenha_texto_area(
    historico_tut + _linha,
    _cx + (_ar[0] + resultado_margem_esq) * _ex, _cy + (_ar[1] + resultado_margem_topo) * _ey,
    _cx + (_ar[2] - resultado_margem_dir) * _ex, _cy + _ar[3] * _ey,
    codigo_escala, false
);

if (erro_tut_timer > 0) {
    draw_set_color(c_red);
    desenha_texto_area(
        "SYNTAX ERROR, INVALID INPUT",
        _cx + (_ar[0] - 100) * _ex, _cy + (_ar[3] - 60) * _ey,
        _cx + (_ar[2] + 100) * _ex, _cy + (_ar[3] - 10) * _ey,
        0.3, true
    );
    draw_set_color(_cinza);
}
}

if (!acertou && (estado == 1 || estado == 2)) {
    draw_set_color(c_red);
    draw_set_alpha((1 - menu_vis) * _xa);
    desenha_texto_area(
        "SYNTAX ERROR, INVALID INPUT",
        _cx + (_ar[0] - 100) * _ex, _cy + (_ar[3] - 60) * _ey,
        _cx + (_ar[2] + 100) * _ex, _cy + (_ar[3] - 10) * _ey,
        0.37, true
    );
}

draw_set_alpha(1);
draw_set_color(c_white);

draw_self();

if (estado < 4 && image_alpha > 0) {
    var _rod = rodadas[min(rodada_atual, array_length(rodadas) - 1)];
    var _ap = areapergunta;

    draw_set_color(_cinza);
    draw_set_alpha(image_alpha);

    desenha_texto_area(_rod.pergunta, _cx + _ap[0] * _ex, _cy + _ap[1] * _ey, _cx + _ap[2] * _ex, _cy + _ap[3] * _ey, texto_escala, true);

    for (var i = 0; i < array_length(areas); i++) {
        var _r = areas[i];
        desenha_texto_area(_rod.alts[i], _cx + _r[0] * _ex, _cy + _r[1] * _ey, _cx + _r[2] * _ex, _cy + _r[3] * _ey, texto_escala, true);
    }
}

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);