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

    instance_create_layer(4065, 1752, "Instances", obj_troca4);
	if (!instance_exists(obj_objetivos)) {
    instance_create_depth(0, 0, -100000, obj_objetivos);
}
obj_objetivos.define_objetivo("OBJETIVO - Pegue a Válvula Beta");
obj_objetivos.define_etapas([
    "- Ache o código na Registration Room",
    "- Vá até o rádio na Machine Room"
]);
    if (!mapa_hut6_entregue) {
        mapa_hut6_entregue = true;
		obj_inventario.nome_item = "Mapa Hut 6";
            obj_inventario.ganhouitem = true;
        global.mapahut6 = true;

        if (instance_exists(obj_inventario)) {
            obj_inventario.nome_item = "Mapa Hut 6";
            obj_inventario.ganhouitem = true;
        }

        audio_play_sound(snd_itemnovo, 1, false);
    }
}