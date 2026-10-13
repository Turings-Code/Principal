if (sprite_index == spr_alanquebraenigma) {
    sprite_index = spr_alanparado;


    if (instance_exists(obj_cutscene1)) {
        obj_cutscene1.quebrou_enigma = true;
    }
}