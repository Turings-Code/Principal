var _minimapa = instance_exists(obj_minimapa);

if (room != rm_bletchley2 && room != rm_bletchley) _minimapa = false;
if (instance_exists(obj_cutscene2) && !obj_cutscene2.cutscene) _minimapa = false;
if (instance_exists(obj_cutscene4) && obj_cutscene4.cutscene) _minimapa = false;
if (instance_exists(obj_cutscene6) && obj_cutscene6.cutscene) _minimapa = false;
if (instance_exists(obj_cutscene7) && obj_cutscene7.cutscene) _minimapa = false;
if (instance_exists(obj_mapahut6)) _minimapa = false;
if (instance_exists(obj_folhasenigma)) _minimapa = false;
if (instance_exists(obj_menupause)) _minimapa = false;

var _margem = _minimapa ? 430 : 100;
var _margem_baixo = 25;

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - sprite_get_width(sprite_index) * image_xscale / 2 - _margem;

y = camera_get_view_y(view_camera[0]) + sprite_get_height(sprite_index) * image_yscale / 2 + _margem_baixo;