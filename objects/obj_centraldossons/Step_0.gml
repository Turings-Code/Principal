if (instance_exists(obj_piano)) {
    if (som_piano == -1) {
        som_piano = audio_play_sound(snd_piano, 1, true, 0.5, pos_piano);
    }
}
else {
    if (som_piano != -1) {
        if (audio_is_playing(som_piano)) {
            pos_piano = audio_sound_get_track_position(som_piano);
            audio_stop_sound(som_piano);
        }

        som_piano = -1;
    }
}

if (instance_exists(obj_cursor) && obj_cursor.clicou) {
    escurecendo = true;
}

if (room == rm_quarto) {
    escurecendo = false;
    alpha_escuro = max(alpha_escuro - 0.02, 0);
}
else if (escurecendo) {
    alpha_escuro = min(alpha_escuro + 0.02, 1);
}