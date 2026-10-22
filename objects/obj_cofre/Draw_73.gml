var _cam = view_camera[0];
var _cx = camera_get_view_x(_cam);
var _cy = camera_get_view_y(_cam);
var _ex = camera_get_view_width(_cam) / display_get_gui_width();
var _ey = camera_get_view_height(_cam) / display_get_gui_height();

for (var i = 0; i < array_length(digitos_pos); i++) {
    if (cadeado1_ok && i < 4) continue;
    if (cadeado2_ok && i >= 4 && i < 8) continue;
    if (cadeado3_ok && i >= 8) continue;
    draw_sprite_ext(
        spr_fontecadeado,
        digitos[i],
        _cx + digitos_pos[i][0] * _ex,
        _cy + digitos_pos[i][1] * _ey,
        digito_escala * _ex,
        digito_escala * _ey,
        0,
        c_white,
        image_alpha
    );
}