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
	if (fase_entrada_hut6 == 4 && !dialogo_radio && fase_saida_turing == 0) {
    fase_saida_turing = 1;
    alvo_y_turing = obj_turing.y + 120;
	var _xerox = instance_create_layer(925, 368, "Instances", obj_xeroxaltoaparece);
        _xerox.image_xscale = 11;
        _xerox.image_yscale = 13;
}
    if (instance_exists(obj_alan)) obj_alan.travado = false;

    if (dialogo_radio) {
        dialogo_radio = false;
		obj_objetivos.define_objetivo("OBJETIVO - Abra a porta para Turing");
		obj_objetivos.define_etapas([]);
		if(!instance_exists(obj_portahut6interage)){
			instance_create_layer(339, 222, "Instances", obj_portahut6interage);}
        if (instance_exists(obj_radio)) obj_radio.fading_out = true;
    }
}

