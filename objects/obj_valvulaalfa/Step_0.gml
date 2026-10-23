var _dist = point_distance(mouse_x, mouse_y, x, y);

if (mouse_check_button_pressed(mb_left) && !zoom_clique && _dist < sprite_width * 0.5 * (image_xscale / escala_base) + 40) {
    zoom_clique = true;
    destruir_timer = destruir_tempo;
}

if (zoom_clique) {
    escala_alvo = escala_clique;
} else {
    var _t = 1 - clamp((_dist - dist_min) / (dist_max - dist_min), 0, 1);
    escala_alvo = lerp(escala_base, escala_max, _t);
}

image_xscale = lerp(image_xscale, escala_alvo, lerp_vel);
image_yscale = image_xscale;

if (destruir_timer > 0) {
    destruir_timer--;

    if (destruir_timer <= 0) {
        fade_final = true;
        if (instance_exists(obj_cofre)) {
            obj_cofre.fading_out = true;
            obj_cofre.fade_speed = fade_final_vel;
            obj_cofre.delay = 0;
        }
    }
}

if (fade_final) {
    image_alpha -= fade_final_vel;

    if (image_alpha <= 0) {
    if (instance_exists(obj_cofreaparece)) {
        with (obj_cofreaparece) instance_destroy();
    }
    if (instance_exists(obj_cofre)) {
        with (obj_cofre) instance_destroy();
    }
    if (instance_exists(obj_inventario)) {
        obj_inventario.nome_item = "Válvula Alfa";
        obj_inventario.ganhouitem = true;
    }
	if (instance_exists(obj_inventario)) {
    obj_inventario.nome_item = "Válvula Alfa";
    obj_inventario.ganhouitem = true;
}
audio_play_sound(snd_itemnovo, 1, false);
global.valvulaalfa = true;
    instance_destroy();
    exit;
}
}