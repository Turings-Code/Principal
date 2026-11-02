if (aviso_espera > 0) aviso_espera--;

if (aviso_ativo) {
    aviso_y += aviso_vel;
    aviso_alpha -= aviso_fade;
    if (aviso_alpha <= 0) aviso_ativo = false;
}

if (instance_exists(obj_alan) && aviso_espera <= 0) {
    var _bateu = false;

    with (obj_alan) {
        _bateu = place_meeting(x - 2, y, obj_collisionblocktemp)
              || place_meeting(x + 2, y, obj_collisionblocktemp)
              || place_meeting(x, y - 2, obj_collisionblocktemp)
              || place_meeting(x, y + 2, obj_collisionblocktemp);
    }

    if (_bateu) {
        aviso_ativo = true;
        aviso_y = 0;
        aviso_alpha = 0.8;
        aviso_espera = 180;
    }
}

if (room == rm_bletchley2) {
    if (instance_exists(obj_cutscene2)) {
        if (!blocos_criados) {
            blocos_criados = true;
            blocos_inst = [];

            for (var i = 0; i < array_length(blocos_def); i++) {
                var _d = blocos_def[i];
                var _b = instance_create_layer(_d[0], _d[1], "Instances", obj_collisionblocktemp);
                _b.image_xscale = _d[2];
                _b.image_yscale = _d[3];
                array_push(blocos_inst, _b);
            }
        }
    } else if (blocos_criados) {
        blocos_criados = false;

        for (var i = 0; i < array_length(blocos_inst); i++) {
            if (instance_exists(blocos_inst[i])) {
                instance_destroy(blocos_inst[i]);
            }
        }

        blocos_inst = [];
    }
}

if (room == rm_bletchley2) {
    if (instance_exists(obj_cutscene4)) {
        if (!blocos_criados4) {
            blocos_criados4 = true;
            blocos_inst4 = [];

            for (var i = 0; i < array_length(blocos_def4); i++) {
                var _d4 = blocos_def4[i];
                var _b4 = instance_create_layer(_d4[0], _d4[1], "Instances", obj_collisionblocktemp);
                _b4.image_xscale = _d4[2];
                _b4.image_yscale = _d4[3];
                array_push(blocos_inst4, _b4);
            }
        }
    } else if (blocos_criados4) {
        blocos_criados4 = false;

        for (var i = 0; i < array_length(blocos_inst4); i++) {
            if (instance_exists(blocos_inst4[i])) {
                instance_destroy(blocos_inst4[i]);
            }
        }

        blocos_inst4 = [];
    }
}

if (room == rm_bletchley2) {
    if (instance_exists(obj_cutscene6)) {
        if (!blocos_criados6) {
            blocos_criados6 = true;
            blocos_inst6 = [];

            for (var i = 0; i < array_length(blocos_def6); i++) {
                var _d6 = blocos_def6[i];
                var _b6 = instance_create_layer(_d6[0], _d6[1], "Instances", obj_collisionblocktemp);
                _b6.image_xscale = _d6[2];
                _b6.image_yscale = _d6[3];
                array_push(blocos_inst6, _b6);
            }
        }
    } else if (blocos_criados6) {
        blocos_criados6 = false;

        for (var i = 0; i < array_length(blocos_inst6); i++) {
            if (instance_exists(blocos_inst6[i])) {
                instance_destroy(blocos_inst6[i]);
            }
        }

        blocos_inst6 = [];
    }
}

if (room == rm_bletchley) {
    if (instance_exists(obj_cutscene7)) {
        if (!blocos_criados7) {
            blocos_criados7 = true;
            blocos_inst7 = [];

            for (var i = 0; i < array_length(blocos_def7); i++) {
                var _d7 = blocos_def7[i];
                var _b7 = instance_create_layer(_d7[0], _d7[1], "Instances", obj_collisionblocktemp);
                _b7.image_xscale = _d7[2];
                _b7.image_yscale = _d7[3];
                array_push(blocos_inst7, _b7);
            }
        }
    } else if (blocos_criados7) {
        blocos_criados7 = false;

        for (var i = 0; i < array_length(blocos_inst7); i++) {
            if (instance_exists(blocos_inst7[i])) {
                instance_destroy(blocos_inst7[i]);
            }
        }

        blocos_inst7 = [];
    }
}