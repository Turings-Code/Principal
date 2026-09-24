// Step Event
if (maeentra) {
    obj_mainha.y += 5;
    if (obj_mainha.sprite_index != spr_maebaixo) {
        obj_mainha.sprite_index = spr_maebaixo;
    }
    if (obj_mainha.y >= 240) {
        acao1 = false;
        obj_mainha.y = 240;
        maeentra = false;

        dialogo_index = 0;
        nome = dialogos[dialogo_index].nome;
        frase = dialogos[dialogo_index].frase;
        caixadetexto = true;
    }
}
if (!acao1) {
    obj_mainha.sprite_index = spr_mae;
}

var _falando = (mostrar_texto && contador_texto < string_length(frase) && pausa_timer <= 0 && caixadetexto);

if (_falando) {
    if (!audio_is_playing(snd_textblip)) {
        som_blip_id = audio_play_sound(snd_textblip, 10, true);
    }

    if (texto_acelerado) {
        audio_sound_pitch(som_blip_id, 1.2);
    } else {
        audio_sound_pitch(som_blip_id, 1);
    }
} else {
    if (audio_is_playing(snd_textblip)) {
        audio_stop_sound(snd_textblip);
    }
}