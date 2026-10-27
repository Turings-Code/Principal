draw_self();

var _cam = view_camera[0];
var _cx = camera_get_view_x(_cam);
var _cy = camera_get_view_y(_cam);
var _ex = camera_get_view_width(_cam) / display_get_gui_width();
var _ey = camera_get_view_height(_cam) / display_get_gui_height();
var _a = area_instrucao;

draw_set_font(fnt_fonte3);
draw_set_color(make_color_rgb(137, 141, 155));
draw_set_alpha(image_alpha);

desenha_texto_area(
    texto_instrucao,
    _cx + _a[0] * _ex, _cy + _a[1] * _ey,
    _cx + _a[2] * _ex, _cy + _a[3] * _ey,
    texto_escala
);

draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);