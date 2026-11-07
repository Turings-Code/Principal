if (fading_out) {
    image_alpha -= fade_speed;
    if (image_alpha <= 0) instance_destroy();
    exit;
}

image_alpha = min(image_alpha + fade_speed, 1);

var _mx = device_mouse_x(0);
var _my = device_mouse_y(0);

var _rx = sprite_get_width(sprite_index) * abs(image_xscale) * 0.5;
var _ry = sprite_get_height(sprite_index) * abs(image_yscale) * 0.5;

var _dx = _mx - x;
var _dy = _my - y;
var _d = point_distance(x, y, _mx, _my);

var _raio = min(_rx, _ry);
var _borda = _d >= _raio * 0.3 && _d <= _raio * 0.9;

if (!arrastando && _borda && mouse_check_button_pressed(mb_left)) {
    arrastando = true;
    offset_ang = image_angle - point_direction(x, y, _mx, _my);
}

if (arrastando) {
    image_angle = point_direction(x, y, _mx, _my) + offset_ang;

    if (!mouse_check_button(mb_left)) {
        arrastando = false;
    }
}

if (!fading_out && (_borda || arrastando)) {
    if (instance_exists(obj_cursormouse)) {
        obj_cursormouse.mao = true;
    }
}

if (!fading_out && abs(angle_difference(image_angle, 270)) <= margem) {
    hold_timer++;
} else {
    hold_timer = 0;
}

if (hold_timer >= hold_tempo) {
    var _cam = view_camera[0];
var _cx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
var _cy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;
var _rd = instance_exists(obj_radio) ? obj_radio.depth : -50000;

var _vx = camera_get_view_x(_cam);
var _vy = camera_get_view_y(_cam);
var _x = _vx + 600 * camera_get_view_width(_cam) / display_get_gui_width();
var _y = _vy + 485 * camera_get_view_height(_cam) / display_get_gui_height();

with (obj_rotatorbase) instance_destroy();
with (obj_radio) instance_destroy();
if (!audio_is_playing(snd_makotoradio)) {
    var _s = audio_play_sound(snd_makotoradio, 1, false);
    audio_sound_set_track_position(_s, 1);
}
instance_create_depth(0, 0, _rd, obj_radiofundo);
instance_create_depth(0, 0, _rd - 2, obj_radiotampa);
instance_create_depth(_x, _y, _rd - 1, obj_valvulabeta);

    instance_destroy();
    exit;
}