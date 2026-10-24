draw_set_font(fnt_fonte);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _y = room_height - creditos_y;

for (var i = 0; i < array_length(creditos); i++)
{
    var _texto = creditos[i].texto;
    var _titulo = creditos[i].titulo;

    var _escala = _titulo ? 1.4 : 0.8;
    var _altura = _titulo ? 72 : 44;
    var _cor = _titulo ? c_yellow : c_white;

    draw_set_color(_cor);

    draw_text_transformed(
        creditos_x,
        _y,
        _texto,
        _escala,
        _escala,
        0
    );

    _y += _altura;
}

draw_set_color(c_white);
draw_set_font(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);