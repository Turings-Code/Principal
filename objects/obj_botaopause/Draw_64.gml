if(instance_exists(obj_cutscene2)){if(!obj_cutscene2.cutscene) exit;}
if(instance_exists(obj_cutscene3)){if(obj_cutscene3.cutscene) exit;}
if(instance_exists(obj_cutscene4)){if(obj_cutscene4.cutscene) exit;}
if(instance_exists(obj_cutscene5)){if(obj_cutscene5.cutscene) exit;}
if(instance_exists(obj_cutscene6)){if(obj_cutscene6.cutscene) exit;}
if(instance_exists(obj_cutscene7)){if(obj_cutscene7.cutscene) exit;}
if(instance_exists(obj_cutscene8)){if(obj_cutscene8.cutscene) exit;}
if(instance_exists(obj_cutscene9)){if(obj_cutscene9.cutscene) exit;}
if(room==rm_transicao1||room==rm_transicao2||room==rm_quarto2||room==rm_menu||room==rm_creditos2) exit;

var _popup = instance_exists(obj_quadro) || instance_exists(obj_piano) || instance_exists(obj_cofre) || instance_exists(obj_folhabinarios)
          || instance_exists(obj_enigma1) || instance_exists(obj_enigma2) || instance_exists(obj_enigma3)
          || instance_exists(obj_folhasenigma) || instance_exists(obj_mapahut6) || instance_exists(obj_radio) || instance_exists(obj_radiofundo) || instance_exists(obj_caixadeenergia) || instance_exists(obj_menupause) || instance_exists(obj_xeroxaltoamp);

if (_popup) exit;

var _cam = view_camera[0];
var _f = display_get_gui_width() / camera_get_view_width(_cam);
var _gx = (x - camera_get_view_x(_cam)) * _f;
var _gy = (y - camera_get_view_y(_cam)) * _f;

draw_sprite_ext(sprite_index, image_index, _gx, _gy, image_xscale * _f, image_yscale * _f, image_angle, image_blend, image_alpha);