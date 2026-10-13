dialogo_index += 1;

if (dialogo_index < array_length(dialogos)) {
    nome = dialogos[dialogo_index].nome;
    frase = dialogos[dialogo_index].frase;
    contador_texto = 0;
    mostrar_texto = true;
    texto_acelerado = false;
}   else {
    caixadetexto = false;
    mostrar_texto = false;

    if (fase == 1) {
        maesai = true;
    } else {
        // acabou o diálogo do theo: ele começa a andar
        theo_alvo_y = obj_theocutscene.y + theo_desce;
        theo_alvo_x = obj_theocutscene.x - theo_esq;
        theoanda = 1;
    }
}