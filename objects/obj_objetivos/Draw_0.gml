if (texto == "") exit;

var _cam = view_camera[0];
var _x = camera_get_view_x(_cam) + margem_x;
var _y = camera_get_view_y(_cam) + margem_y;

draw_set_font(fnt_fonte);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(alpha * 0.7);
draw_set_color(c_white);
draw_text_transformed(_x, _y, texto, 0.7, 0.7, 0);
draw_set_alpha(1);