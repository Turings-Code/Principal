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
    if (intro_mae) {
    intro_mae = false;
    if (instance_exists(obj_alancutscene)) {
        alan_alvo_x = obj_alancutscene.x - alan_desloca;
    }
    alan_anda = true;
} else {
    maesai = true;
}
} else if (fase == 2) {
        theo_alvo_y = obj_theocutscene.y + theo_desce;
        theo_alvo_x = obj_theocutscene.x - theo_esq;
        theoanda = 1;
    } else if (fase == 3) {
        if (instance_exists(obj_enigmainicial)) {
            with (obj_enigmainicial) instance_destroy();
        }
        if (instance_exists(obj_enigmaampl)) {
            obj_enigmaampl.fading_out=true;
        }
        if (instance_exists(obj_alan)) {
            obj_alan.sprite_index = spr_alanquebraenigma;
            obj_alan.image_index = 0;
        }
     } else if (fase == 4) {
    alarm[6] = 60;
}
}