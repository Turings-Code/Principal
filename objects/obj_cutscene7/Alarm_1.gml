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

        obj_objetivos.define_objetivo(" ");
        obj_objetivos.define_etapas([]);

        if (instance_exists(obj_turing)) {
            obj_turing.saida7_ativa = true;
            obj_turing.saida7_alvo_y = obj_turing.y - 140;
        }

        var _troca = instance_create_layer(1266, 643, "Instances", obj_troca);
        _troca.image_xscale = 7;
        _troca.image_yscale = 7;
    }

    if (instance_exists(obj_alan)) {
        obj_alan.travado = false;
    }
}