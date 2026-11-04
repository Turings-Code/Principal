if(instance_exists(obj_cutscene2)){if(!obj_cutscene2.cutscene) exit;}
if(instance_exists(obj_cutscene3)){if(obj_cutscene3.cutscene) exit;}
if(instance_exists(obj_cutscene4)){if(obj_cutscene4.cutscene) exit;}
if(instance_exists(obj_cutscene5)){if(obj_cutscene5.cutscene) exit;}
if(instance_exists(obj_cutscene6)){if(obj_cutscene6.cutscene) exit;}
if(instance_exists(obj_cutscene7)){if(obj_cutscene7.cutscene) exit;}
if(instance_exists(obj_cutscene8)){if(obj_cutscene8.cutscene) exit;}
if(instance_exists(obj_cutscene9)){if(obj_cutscene9.cutscene) exit;}
if(room==rm_transicao1||room==rm_transicao2||room==rm_quarto2) exit;

var _popup = instance_exists(obj_quadro) || instance_exists(obj_piano) || instance_exists(obj_cofre)
          || instance_exists(obj_enigma1) || instance_exists(obj_enigma2) || instance_exists(obj_enigma3)
          || instance_exists(obj_folhasenigma) || instance_exists(obj_mapahut6) || instance_exists(obj_radio) || instance_exists(obj_radiofundo) || instance_exists(obj_caixadeenergia) || instance_exists(obj_menupause);

var _sobre = position_meeting(mouse_x, mouse_y, id);

if (_sobre && !_popup) {
    obj_cursormouse.mao = true;

    if (mouse_check_button_pressed(mb_left)) {
        instance_create_depth(0, 0, -300000, obj_menupause);
    }
}