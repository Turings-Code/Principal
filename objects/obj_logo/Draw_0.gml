draw_self();

if (estado == 3) {
    var _cam = view_camera[0];
    var _cx = camera_get_view_x(_cam);
    var _cy = camera_get_view_y(_cam);
    var _w = camera_get_view_width(_cam);
    var _h = camera_get_view_height(_cam);

    draw_set_font(fnt_fonte);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_set_valign(fa_bottom);
    draw_text(_cx + _w / 2, _cy + _h - 60, "Clique para Prosseguir");
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}