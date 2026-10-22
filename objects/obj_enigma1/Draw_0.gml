var _cam = view_camera[0];
var _cx = camera_get_view_x(_cam);
var _cy = camera_get_view_y(_cam);
var _w = camera_get_view_width(_cam);
var _h = camera_get_view_height(_cam);

draw_set_color(c_black);
draw_set_alpha(image_alpha * escuridao);
draw_rectangle(_cx - 1, _cy - 1, _cx + _w + 1, _cy + _h + 1, false);

draw_set_alpha(1);
draw_set_color(c_white);

draw_self();

var _acesa = true;
var _cor = c_white;

if (acerto_timer > 0) {
    var _decorrido = acerto_tempo - acerto_timer;
    _acesa = ((_decorrido div acerto_pisca) mod 2 == 0);
    _cor = c_lime;
}

if (_acesa) {
    for (var i = 0; i < string_length(digitado); i++) {
        var _f = ord(string_char_at(digitado, i + 1)) - ord("A");

        draw_sprite_ext(
            spr_fontetela,
            _f,
            texto_x1 + texto_desloca + i * (letra_larg + fonte_espaco),
            texto_y,
            fonte_escala,
            fonte_escala,
            0,
            _cor,
            image_alpha
        );
    }
}

draw_set_alpha(1);
draw_set_color(c_white);

if (erro_timer > 0) {
    var _erro = "ERROR";
    var _erro_x = texto_x1 + texto_desloca;
    var _erro_y = texto_y;

    for (var j = 0; j < string_length(_erro); j++) {
        var _f2 = ord(string_char_at(_erro, j + 1)) - ord("A");

        draw_sprite_ext(
            spr_fontetela,
            _f2,
            _erro_x + j * (letra_larg + fonte_espaco),
            _erro_y,
            fonte_escala,
            fonte_escala,
            0,
            c_red,
            image_alpha
        );
    }
}