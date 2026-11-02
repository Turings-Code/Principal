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
	if (dialogo1_ativo) {
    dialogo1_ativo = false;
	obj_objetivos.define_objetivo("OBJETIVO - Siga o Turing");
        obj_objetivos.define_etapas([]);
    if (instance_exists(obj_turing)) {
        obj_turing.iniciar_caminho6 = true;
    }
}
    if (instance_exists(obj_alan)) obj_alan.travado = false;
}