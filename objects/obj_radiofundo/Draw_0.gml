var _cam = view_camera[0];
var _cx = camera_get_view_x(_cam);
var _cy = camera_get_view_y(_cam);

draw_set_color(c_black);
draw_set_alpha(image_alpha * escuridao);
draw_rectangle(_cx - 1, _cy - 1, _cx + camera_get_view_width(_cam) + 1, _cy + camera_get_view_height(_cam) + 1, false);
draw_set_alpha(1);
draw_set_color(c_white);

draw_self();