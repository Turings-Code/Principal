if(instance_exists(obj_controladorenigmas)){
	with(obj_controladorenigmas){instance_destroy();}}
obj_objetivos.define_objetivo("OBJETIVO - Fale com o Turing");
obj_objetivos.define_etapas([]);
if(!tocou){
audio_play_sound(snd_objetivoconcluido, 1, false);
tocou=true;}