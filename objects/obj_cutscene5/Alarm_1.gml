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
	
	if (dialogo4_ativo) {
    dialogo4_ativo = false;
    dialogo4_feito = true;
	audio_play_sound(snd_itemnovo, 1, false);
	if (dialogo4_feito&&!caixadetexto){
		obj_portahut6.image_speed=3;
		if(!instance_exists(obj_troca2)){
			var _t = instance_create_layer(802, 512, "Instances", obj_troca2);
_t.image_xscale = 11;
_t.image_yscale = 8;}
		}
}
	
	
    if (dialogo2_ativo) {
        
        obj_objetivos.define_objetivo("OBJETIVO - Descubra a Frequência");
        obj_objetivos.define_etapas([
            "- Faça o programa para identificar se é par ou ímpar",
            "- Digite cada dígito no programa para formar o novo código",
            "- Transcreva os grupos de 4 bits para decimal",
            "- Coloque a frequência no rádio"
        ]);
		xeroxaltocriado=true;
        dialogo2_ativo = false;
    }

    if (fase_entrada_hut6 == 4 && !dialogo_radio && fase_saida_turing == 0) {
        obj_objetivos.define_objetivo("OBJETIVO - Vá até o computador");
        fase_saida_turing = 1;
        alvo_y_turing = obj_turing.y + 120;
        var _xerox = instance_create_layer(1470, 700, "Instances", obj_xeroxaltoaparece);
        _xerox.image_xscale = 11;
        _xerox.image_yscale = 13;
    }

    if (!(fase_saida_turing >= 1 && fase_saida_turing < 3)) {
    if (instance_exists(obj_alan)) obj_alan.travado = false;
}

    if (dialogo_radio) {
        dialogo_radio = false;
        obj_objetivos.define_objetivo("OBJETIVO - Abra a porta para Turing");
        obj_objetivos.define_etapas([]);

        if (!instance_exists(obj_portahut6interage)) {
            instance_create_layer(890, 530, "Instances", obj_portahut6interage);
        }

        if (instance_exists(obj_radio)) obj_radio.fading_out = true;
    }
}