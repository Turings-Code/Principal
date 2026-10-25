var _cam = view_camera[0];
var _cx = camera_get_view_x(_cam);
var _cy = camera_get_view_y(_cam);
var _w = camera_get_view_width(_cam);
var _h = camera_get_view_height(_cam);

// escurece tudo que está atrás
draw_set_color(c_black);
draw_set_alpha(image_alpha * escuridao);
draw_rectangle(_cx - 1, _cy - 1, _cx + _w + 1, _cy + _h + 1, false);
draw_set_alpha(1);
draw_set_color(c_white);

// o quadro por cima
draw_self();