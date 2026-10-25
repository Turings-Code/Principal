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
    if (instance_exists(obj_alan)) obj_alan.travado = false;
    turing_saindo = true;

    if (!mapa_hut6_entregue) {
        mapa_hut6_entregue = true;
        global.mapahut6 = true;

        if (instance_exists(obj_inventario)) {
            obj_inventario.nome_item = "Mapa Hut 6";
            obj_inventario.ganhouitem = true;
        }

        audio_play_sound(snd_itemnovo, 1, false);
    }
}