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
// mãe sobe até sair do mapa
if (maesai) {
    obj_mainha.y -= 5;
    obj_mainha.sprite_index = spr_alancima;   // troca pelo nome do seu sprite da mãe subindo

   if (obj_mainha.y < -120) {
    maesai = false;
    alarm[2] = 180;   // espera 3 segundos
    fase = 2;
}

        if (!instance_exists(obj_alan)) {
            var _alan = instance_create_layer(1050, 500, "Instances", obj_alan);
            _alan.direcao = "cima";
            _alan.sprite_index = spr_alanparado;
        }
        if (instance_exists(obj_alancutscene)) {
            with (obj_alancutscene) { instance_destroy(); }
        }
    }

// theo entra igual a mãe
if (theoentra) {
    obj_theocutscene.y += 5;
    obj_theocutscene.sprite_index = spr_theobaixo;   // troca pelo nome do seu sprite

    if (obj_theocutscene.y >= 240) {
        obj_theocutscene.y = 240;
        obj_theocutscene.sprite_index = spr_theoparadobaixo;    // sprite parado, troca pelo seu
        theoentra = false;

        dialogos = dialogos_theo;
        dialogo_index = 0;
        nome = dialogos[dialogo_index].nome;
        frase = dialogos[dialogo_index].frase;
        contador_texto = 0;
        mostrar_texto = true;
        texto_acelerado = false;
        caixadetexto = true;
    }
}

// theo anda: um pouco pra baixo, depois um pouco pra esquerda
if (theoanda == 1) {
    obj_theocutscene.sprite_index = spr_theobaixo;   // troca pelo seu sprite andando pra baixo
    obj_theocutscene.y = min(obj_theocutscene.y + theo_vel, theo_alvo_y);

    if (obj_theocutscene.y >= theo_alvo_y) theoanda = 2;
}
else if (theoanda == 2) {
    obj_theocutscene.sprite_index = spr_theoesquerda; // troca pelo seu sprite andando pra esquerda
    obj_theocutscene.x = max(obj_theocutscene.x - theo_vel, theo_alvo_x);

    if (obj_theocutscene.x <= theo_alvo_x) {
        theoanda = 0;
        obj_theocutscene.sprite_index = spr_theoparadobaixo;     // sprite parado, troca pelo seu

        // terminou de andar: agora sim o Alan aparece
        if (!instance_exists(obj_alan)) {
            var _alan = instance_create_layer(1050, 500, "Instances", obj_alan);
            _alan.direcao = "cima";
            _alan.sprite_index = spr_alanparado;
        }
        if (instance_exists(obj_alancutscene)) {
            with (obj_alancutscene) { instance_destroy(); }
        }
    }
	if (obj_theocutscene.x <= theo_alvo_x) {
    theoanda = 0;
    obj_theocutscene.sprite_index = spr_theoparadobaixo;   // sprite parado, troca pelo seu
    alarm[3] = 60;   // espera 1 segundo
	if (!instance_exists(obj_objetivos)) {
    instance_create_depth(0, 0, -100000, obj_objetivos);
}
obj_objetivos.define_objetivo("OBJETIVO - Vá até o Theo");
}
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