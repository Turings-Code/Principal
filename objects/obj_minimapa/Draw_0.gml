if (room != rm_bletchley2 && room != rm_bletchley) exit;
if (instance_exists(obj_cutscene2)) { if (!obj_cutscene2.cutscene) exit; }
if (instance_exists(obj_cutscene4)) { if (obj_cutscene4.cutscene) exit; }
if(instance_exists(obj_cutscene6)){if(obj_cutscene6.cutscene) exit;}
if(instance_exists(obj_cutscene7)){if(obj_cutscene7.cutscene) exit;}
if (instance_exists(obj_mapahut6)) exit; 
if (instance_exists(obj_folhasenigma)) exit; 

var _spr = (room == rm_bletchley) ? spr_minimapabletchley1 : spr_minimapa;

var _cam = view_camera[0];
var _gx = camera_get_view_x(_cam) + camera_get_view_width(_cam) - tam - margem;
var _gy = camera_get_view_y(_cam) + margem;

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(_gx, _gy, _gx + tam, _gy + tam, false);
draw_set_alpha(0.5);
draw_set_color(c_white);

if (instance_exists(obj_alan)) {
    var _sw = sprite_get_width(_spr);
    var _sh = sprite_get_height(_spr);

    var _alvo_x = obj_alan.x * _sw / room_width;
    var _alvo_y = obj_alan.y * _sh / room_height;

    if (!iniciado) {
        suave_x = _alvo_x;
        suave_y = _alvo_y;
        iniciado = true;
    }

    suave_x = lerp(suave_x, _alvo_x, vel_lerp);
    suave_y = lerp(suave_y, _alvo_y, vel_lerp);

    var _l = clamp(suave_x - vis / 2, 0, _sw - vis);
    var _t = clamp(suave_y - vis / 2, 0, _sh - vis);

    draw_sprite_part_ext(_spr, 0, _l, _t, vis, vis,
        _gx, _gy, esc, esc, c_white, 0.9);

    var _px = _gx + clamp((_alvo_x - _l) * esc, 0, tam);
    var _py = _gy + clamp((_alvo_y - _t) * esc, 0, tam);

    draw_sprite_ext(spr_pontomapa, 0, _px, _py, esc, esc, 0, c_white, 0.9);
    draw_sprite_ext(spr_bordamapa, 0, _gx, _gy, esc, esc, 0, c_white, 1);
}

draw_set_font(fnt_fonte3);
draw_set_color(c_white);
draw_set_alpha(0.9);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text_transformed(_gx + tam - 20, _gy + tam + 10, "Bletchley Park", 0.6, 0.6, 0);
draw_set_halign(fa_left);