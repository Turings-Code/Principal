dialogo_index += 1;

if (dialogo_index < array_length(dialogos)) {
    nome = dialogos[dialogo_index].nome;
    frase = dialogos[dialogo_index].frase;
    contador_texto = 0;
    mostrar_texto = true;
    texto_acelerado = false;

    
} else {
	if(dialogos!=dialogos_final){
		if (instance_exists(obj_inventario)) {
            obj_inventario.nome_item = "Folhas do Enigma";
            obj_inventario.ganhouitem = true;
			global.folhasenigma=true;
			audio_play_sound(snd_itemnovo, 1, false);
        }}
    caixadetexto = false;
    mostrar_texto = false;
	global.theojogando=true;
	cutscene=false;
	obj_alan.travado=false;
	if(!instance_exists(obj_alancutscene)){instance_create_layer(obj_alan.x, obj_alan.y, "Instances", obj_alancutscene);}
	if(!instance_exists(obj_alancutscenehut8)){instance_create_layer(obj_alan.x, obj_alan.y, "Instances", obj_alancutscenehut8);}
	if(instance_exists(obj_theo)){obj_alan.x=obj_theo.x; obj_alan.y=obj_theo.y;}
	if(instance_exists(obj_theo)){with(obj_theo){instance_destroy();}}
	if(!instance_exists(obj_turinghut8)){instance_create_layer(1173, 1842, "Instances", obj_turinghut8);}
	parte1=true;
	audio_play_sound(snd_objetivo, 1, false);
	obj_objetivos.define_objetivo("OBJETIVO - Pegue a Válvula Alfa");
	obj_objetivos.define_etapas([
    "- Descriptografe os códigos (0/3)",
    "- Coloque os códigos no baú"
	]);

}