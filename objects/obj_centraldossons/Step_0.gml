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

if (instance_exists(obj_cursor) && (obj_cursor.clicou || obj_cursor.clicou2)) {
    escurecendo = true;
}

if (room == rm_quarto || room != room_anterior_fade) {
    escurecendo = false;
}

room_anterior_fade = room;

if (escurecendo) {
    alpha_escuro = min(alpha_escuro + 0.02, 1);
} else {
    alpha_escuro = max(alpha_escuro - 0.02, 0);
}

if (room != rm_quarto && audio_is_playing(snd_backgroundquarto)) {
    audio_sound_gain(snd_backgroundquarto, max(0, audio_sound_get_gain(snd_backgroundquarto) - 0.05), 0);
    if (audio_sound_get_gain(snd_backgroundquarto) <= 0.05) {
        audio_stop_sound(snd_backgroundquarto);
    }
}

if(room==rm_creditos2){
		if (audio_is_playing(snd_backgroundfinal)) {
    audio_sound_gain(snd_backgroundfinal, 0.7, 2000);
}
}