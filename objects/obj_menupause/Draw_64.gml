var _cam = view_camera[0];
var _gw = display_get_gui_width();
var _gh = display_get_gui_height();
var _f = _gw / camera_get_view_width(_cam);

draw_set_color(c_black);
draw_set_alpha(image_alpha * escuridao);
draw_rectangle(-1, -1, _gw + 1, _gh + 1, false);
draw_set_alpha(1);
draw_set_color(c_white);

draw_sprite_ext(sprite_index, image_index, _gw / 2, _gh / 2, image_xscale * _f, image_yscale * _f, image_angle, image_blend, image_alpha);
if (aviso_ativo) {
    draw_set_font(fnt_fonte);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_set_alpha(aviso_alpha);
    draw_text_transformed(_gw / 2, _gh - 120 * _f - aviso_y, "Indisponível no navegador!", aviso_escala * _f, aviso_escala * _f, 0);
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}