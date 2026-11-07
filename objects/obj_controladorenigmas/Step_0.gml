
if(!global.valvulaalfa){
if(obj_folhacodigos.image_index==4){
	enigma1=true;
	if(!enigma1tocou){
	audio_play_sound(snd_objetivo, 1, false);
	enigma1tocou=true;
	}
	obj_objetivos.define_etapas([
    "- Descriptografe os códigos (1/3)",
    "- Coloque os códigos no baú"
]);
	}
if(obj_folhacodigos.image_index==8){
	enigma2=true;
	if(!enigma2tocou){
	audio_play_sound(snd_objetivo, 1, false);
	enigma2tocou=true;
	}
	obj_objetivos.define_etapas([
    "- Descriptografe os códigos (2/3)",
    "- Coloque os códigos no baú"
]);
	}
if (obj_folhacodigos.image_index == 12) {
    enigma3 = true;
	if(!enigma3tocou){
	audio_play_sound(snd_objetivo, 1, false);
	enigma3tocou=true;
	}
    obj_objetivos.define_etapas([
        { texto: "- Descriptografe os códigos (3/3)", feita: true },
        "- Coloque os códigos no baú"
    ]);
}} else{
	}