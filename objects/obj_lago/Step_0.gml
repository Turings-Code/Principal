if (instance_exists(obj_alan)) {
    if(distance_to_object(obj_alan)<200){
		if (!audio_is_playing(snd_lago)) {
    audio_play_sound(snd_lago, 1, true);
    audio_sound_gain(snd_lago, 0.4, 0);
}
} else{
	if(audio_is_playing(snd_lago)){audio_stop_sound(snd_lago);}
}
}