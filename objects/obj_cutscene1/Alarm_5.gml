fase = 4;
dialogos = dialogos_quebra;
if(audio_is_playing(snd_backgroundquarto)){
	audio_stop_sound(snd_backgroundquarto);}
if(audio_is_playing(snd_backgroundquarto2)){
	audio_stop_sound(snd_backgroundquarto2);}
if(!audio_is_playing(snd_backgroundquarto)){
	audio_stop_sound(snd_backgroundquarto);}
if(!audio_is_playing(snd_backgroundtenso)){
	audio_play_sound(snd_backgroundtenso, 1, true);}
if(!audio_is_playing(snd_quebrando)){
	audio_play_sound(snd_quebrando, 1, false);}
dialogo_index = 0;
nome = dialogos[dialogo_index].nome;
frase = dialogos[dialogo_index].frase;
contador_texto = 0;
mostrar_texto = true;
texto_acelerado = false;
caixadetexto = true;
obj_enigmacutscene.sprite_index=spr_enigma_cutscenalberto;