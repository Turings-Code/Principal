if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_alan) && instance_exists(obj_cutscene9) && distance_to_object(obj_alan) <= 80 && obj_letrae.x==x) {
    global.valvulaalfa=false;
	if(!audio_is_playing(snd_colocavalvula)){
		audio_play_sound(snd_colocavalvula, 1, false);}
	instance_destroy();
}