if (place_meeting(x, y, obj_area2)) {
    if (!instance_exists(obj_error)) {
        instance_create_layer(390, 420, "Instances", obj_error);
    }
} else if (place_meeting(x, y, obj_area4)) {
    with (obj_error) { instance_destroy(); }
} else if (place_meeting(x, y, obj_area5)) {
    with (obj_error) { instance_destroy(); }
} else if (place_meeting(x, y, obj_area6)&&!place_meeting(x, y, obj_descricao)&&!place_meeting(x, y, obj_areapai)) {
	room_goto(rm_creditos2);} else if (place_meeting(x, y, obj_area7)&&!place_meeting(x, y, obj_descricao)&&!place_meeting(x, y, obj_areapai)) { 
		audio_play_sound(snd_play, 1, false);
	if(!audio_is_playing(snd_PCfinal)){
	audio_play_sound(snd_PCfinal, 0.02, false)	;
	}
	clicou=true;
	}

if (instance_exists(obj_descricao)) {
    with (obj_descricao) { instance_destroy(); }}
	
