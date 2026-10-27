var _cam = view_camera[0];

var _w = camera_get_view_width(_cam);
var _h = camera_get_view_height(_cam);

x = camera_get_view_x(_cam) + _w / 2;
y = camera_get_view_y(_cam) + _h / 2;

var _escala_x = _w / (sprite_get_width(sprite_index) * 1.0);
var _escala_y = _h / (sprite_get_height(sprite_index) * 1.0);

var _escala = min(_escala_x, _escala_y);

image_xscale = _escala;
image_yscale = _escala;