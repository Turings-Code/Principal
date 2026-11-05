puxa_alvo = instance_create_depth(770, 655, -1000, obj_cutscene1fim);
puxa_vel = 0.5;
puxando = true;
if(!audio_is_playing(snd_puxados)){
	audio_play_sound(snd_puxados, 1, false);}
if (instance_exists(obj_alan)) obj_alan.travado = true;
