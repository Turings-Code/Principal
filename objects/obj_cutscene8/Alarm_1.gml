dialogo_index += 1;

if (dialogo_index < array_length(dialogos)) {
    nome = dialogos[dialogo_index].nome;
    frase = dialogos[dialogo_index].frase;
    contador_texto = 0;
    mostrar_texto = true;
    texto_acelerado = false;
} else {
    caixadetexto = false;
    mostrar_texto = false;
    cutscene = false;
	if (tipo_dialogo == 1) {
    if(!instance_exists(obj_falaturingmansao)){
		instance_create_layer(obj_turing.x, obj_turing.y, "Instances", obj_falaturingmansao);}
}
if(tipo_dialogo==7){
	obj_turing.saidamansao=true;
}
	if(tipo_dialogo==6){
		obj_objetivos.define_objetivo("OBJETIVO - Volte para o Turing");
        obj_objetivos.define_etapas([]);
		if(!instance_exists(obj_falaturingmansao3)){
			instance_create_layer(obj_turing.x, obj_turing.y, "Instances", obj_falaturingmansao3);}
		}
		
	if (tipo_dialogo == 5) {
		obj_portasalafinal.abrir=true;
		if(instance_exists(obj_falaturingmansao2)){
			with(obj_falaturingmansao2){instance_destroy();}}
		obj_objetivos.define_objetivo("OBJETIVO - Volte para Chamar o Alan");
        obj_objetivos.define_etapas([]);
		if(instance_exists(obj_falaalanmansao)){
			with(obj_falaalanmansao){instance_destroy();}}
		if(!instance_exists(obj_falaalanmansao2)){
			instance_create_layer(obj_alancutscene.x, obj_alancutscene.y, "Instances", obj_falaalanmansao2);}
		}
		
    if (!dialogo_atual2) {
        obj_objetivos.define_objetivo("OBJETIVO - Abra a Sala da Bombe");
        obj_objetivos.define_etapas([
            "- Religue a Energia da Porta",
            "- Encontre a Válvula Mestra",
            "- Encontre os Fragmentos do Código (0/3)"
        ]);
        obj_alan.theosegue = true;
    }
	if(dialogo_atual2){
			instance_create_layer(obj_alan.x, obj_alan.y, "Instances", obj_alancutscene);
			if(!instance_exists(obj_falaalanmansao)){
		instance_create_layer(obj_alancutscene.x, obj_alancutscene.y, "Instances", obj_falaalanmansao);}
		obj_alan.x=obj_theo.x; obj_alan.y=obj_theo.y;
		if(instance_exists(obj_theo)){
			with(obj_theo){instance_destroy();}}
			obj_alan.theosegue=false;
			global.theojogando=true;
	}
    dialogo_atual2 = false;

    if (instance_exists(obj_alan)) {
        obj_alan.travado = false;
    }
}