if (!instance_exists(obj_caixadeenergia)) {
    instance_destroy();
    exit;
}

image_alpha = obj_caixadeenergia.image_alpha;
if (conectado) {
    exit;
}

if (mouse_check_button(mb_left)) {
    var _cam = view_camera[0];

    var _mx = device_mouse_x_to_gui(0);
    var _my = device_mouse_y_to_gui(0);

    var _gw = display_get_gui_width();
    var _gh = display_get_gui_height();

    var _cx = camera_get_view_x(_cam);
    var _cy = camera_get_view_y(_cam);
    var _w = camera_get_view_width(_cam);
    var _h = camera_get_view_height(_cam);

    ponta_x = _cx + _mx * _w / _gw;
    ponta_y = _cy + _my * _h / _gh;

    var _destino = obj_caixadeenergia.conectores_correspondentes[indice];
var _area = obj_caixadeenergia.areas_conectores[_destino];

    if (point_in_rectangle(_mx, _my, _area[0], _area[1], _area[2], _area[3])) {
    conectado = true;

    ponta_x = _cx + ((_area[0] + _area[2]) / 2) * _w / _gw;
    ponta_y = _cy + ((_area[1] + _area[3]) / 2) * _h / _gh;

    with (obj_caixadeenergia) {
        cabos_conectados[other.indice] = true;
    }
}

    var _dist = point_distance(ancora_x, ancora_y, ponta_x, ponta_y);
var _angulo = point_direction(ancora_x, ancora_y, ponta_x, ponta_y);

image_angle = _angulo;
image_xscale = 7 + (_dist / sprite_get_width(sprite_index));

x = ancora_x + lengthdir_x(image_yscale * sprite_get_height(sprite_index) / 2, _angulo + 90);
y = ancora_y + lengthdir_y(image_yscale * sprite_get_height(sprite_index) / 2, _angulo + 90);

} else {
    instance_destroy();
}