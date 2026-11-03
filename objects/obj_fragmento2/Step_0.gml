if (delay > 0) {
    delay--;
} else if (!fading_out && !fade_final && keyboard_check_pressed(ord("E"))) {
    fading_out = true;
}

if (fade_final) {
    image_alpha -= fade_final_vel;

    with (obj_folha1) image_alpha -= other.fade_final_vel;
    with (obj_folha2) image_alpha -= other.fade_final_vel;
    with (obj_folha3) image_alpha -= other.fade_final_vel;
    with (obj_folha4) image_alpha -= other.fade_final_vel;
    with (obj_folha5) image_alpha -= other.fade_final_vel;
    with (obj_escurece) image_alpha -= other.fade_final_vel;

    if (image_alpha <= 0) {
        with (obj_folha1) instance_destroy();
        with (obj_folha2) instance_destroy();
        with (obj_folha3) instance_destroy();
        with (obj_folha4) instance_destroy();
        with (obj_folha5) instance_destroy();
        with (obj_escurece) instance_destroy();
        instance_destroy();
        exit;
    }
} else if (fading_out) {
    image_alpha -= fade_speed;

    if (image_alpha <= 0) {
        instance_destroy();
        exit;
    }
} else {
    image_alpha = min(image_alpha + fade_speed, 1);
}
if (!zoom_ativo && !fading_out && !fade_final) {
    var _folhas = [obj_folha1, obj_folha2, obj_folha3, obj_folha4, obj_folha5];
    var _rects = [];

    for (var i = 0; i < array_length(_folhas); i++) {
        with (_folhas[i]) {
            array_push(_rects, [bbox_left, bbox_top, bbox_right, bbox_bottom]);
        }
    }

    var _passos = 10;
    var _livres = 0;

    for (var ix = 0; ix < _passos; ix++) {
        for (var iy = 0; iy < _passos; iy++) {
            var _px = lerp(bbox_left, bbox_right, (ix + 0.5) / _passos);
            var _py = lerp(bbox_top, bbox_bottom, (iy + 0.5) / _passos);

            var _coberto = false;

            for (var r = 0; r < array_length(_rects); r++) {
                var _b = _rects[r];

                if (_px >= _b[0] && _px <= _b[2] && _py >= _b[1] && _py <= _b[3]) {
                    _coberto = true;
                    break;
                }
            }

            if (!_coberto) _livres++;
        }
    }

    if (_livres / (_passos * _passos) >= 0.7) {
        zoom_ativo = true;
        depth = -100000;
    }
}

if (zoom_ativo) {
    image_xscale = lerp(image_xscale, 15, 0.03);
    image_yscale = image_xscale;
}

if (image_xscale > 13 && !fade_final && delay <= 0 && mouse_check_button_pressed(mb_left)) {
    fade_final = true;
    global.fragmento2 = true;
	
    obj_organizaobjetivos.atualizar();
}