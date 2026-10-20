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

    if (fase == 1) {
        fase = 2;
        turing_sobe = true;
    }
    else if (fase == 2) {

        if (instance_exists(obj_objetivos)) {
            obj_objetivos.define_objetivo("OBJETIVO - Siga o Turing");
        }
		if (instance_exists(obj_turing)) {
        with (obj_turing) {
            alvo_y = y + 500;
            andando = true;
        }
    }
		obj_alan.travado=false;
        cutscene=true;
		obj_alan.theosegue=true;
    }
}