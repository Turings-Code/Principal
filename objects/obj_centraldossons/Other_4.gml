if(room==rm_quarto){
	if(!audio_is_playing(snd_backgroundquarto)){
	audio_play_sound(snd_backgroundquarto, 1, true);}
	if(!audio_is_playing(snd_backgroundquarto2)){
	audio_play_sound(snd_backgroundquarto2, 1, true);}
	}
if(room==rm_bletchley2){
	if(!audio_is_playing(snd_natureza)){
	audio_play_sound(snd_natureza, 1, true);}}
if(room!=rm_bletchley2||rm_bletchley){
	if(audio_is_playing(snd_natureza)){
		audio_stop_sound(snd_natureza);}}
