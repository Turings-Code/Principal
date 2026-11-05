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