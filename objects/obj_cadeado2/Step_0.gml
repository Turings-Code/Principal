if (instance_exists(obj_cofre)) {
    if (!solto) {
        image_alpha = obj_cofre.image_alpha;

        var _cam0 = view_camera[0];
        x = camera_get_view_x(_cam0) + camera_get_view_width(_cam0) / 2;
        y = camera_get_view_y(_cam0) + camera_get_view_height(_cam0) / 2;
    }

    if (!solto && obj_cofre.cadeado2) {
        solto = true;
        image_index = 1;
        image_speed = 0;
        var _cam1 = view_camera[0];
        sx = camera_get_view_x(_cam1);
        sy = camera_get_view_y(_cam1);
    }
}

if (solto && !parado) {
    if (!destrancou) {
        if (!audio_is_playing(snd_cadeadocaindo)) {
            audio_play_sound(snd_cadeadocaindo, 1, false);
        }
        destrancou = true;
    }
    image_angle = lerp(image_angle, giro_alvo, giro_vel);
    queda_vel += queda_grav;
    y += queda_vel;

    var _cam2 = view_camera[0];
    var _fundo = camera_get_view_y(_cam2) + camera_get_view_height(_cam2);

    if (y > _fundo + sprite_height * 2) {
        parado = true;
        queda_vel = 0;
    }
}