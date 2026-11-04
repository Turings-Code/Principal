if (estado == 0) {
    if (image_speed < 0) {
        instance_destroy();
    }
    else if (sprite_index != spr_exclamacao) {
        estado = 1;
        sprite_index = spr_exclamacao;
        image_index = 0;
        image_speed = 1;
        if (instance_exists(obj_diagolopercebeu) && !obj_diagolopercebeu.ja_falou) {
    obj_diagolopercebeu.ja_falou = true;
	if (instance_exists(npc_alvo)) obj_diagolopercebeu.numero_npc = npc_alvo.numero;
    with (obj_diagolopercebeu) {
        caixadetexto = true;
        nome = "Operário";
        frase = "Ei garoto, tá fazendo oque aqui?";
        contador_texto = 0;
        texto_acelerado = false;
        pausa_timer = 0;
        mostrar_texto = true;
    }
}
percebeu=true;
    }
}
if (instance_exists(npc_alvo)) {
    npc_alvo.criou = false;
}