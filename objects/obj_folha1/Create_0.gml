image_xscale=5.6;
image_yscale=5.6;
image_alpha = 0;
fade_speed = 0.1;
fading_out = false;
delay = 10; // frames antes de poder fechar
depth=-50000;
escuridao = 0.7; // 0 = nada, 1 = preto total

off_x = 0;
off_y = 0;
centralizado = false;
var _cam = view_camera[0];
var _cx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
var _cy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;

view_off_x = x - _cx;
view_off_y = y - _cy;