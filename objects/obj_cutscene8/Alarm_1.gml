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

    obj_objetivos.define_objetivo("OBJETIVO - Abra a Sala da Bombe");
    obj_objetivos.define_etapas([
        "Religue a Energia da Porta",
        "Encontre a Válvula Mestra",
        "Encontre os Fragmentos do Código (0/3)"
    ]);

    if (instance_exists(obj_alan)) {
        obj_alan.travado = false;
    }
}