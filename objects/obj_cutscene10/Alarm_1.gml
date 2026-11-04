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

    if (fase10 == 0) {
        fase10 = 1;
    }
    else if (fase10 == 3) {
        if (!instance_exists(obj_mainha)) {
            instance_create_layer(1051, 1122, "Instances", obj_mainha);
        }
        fase10 = 4;
    }
    else if (fase10 == 5) {
    fase10 = 6;
    saida10 = true;
    theo_saida_fase = 1;
}
}