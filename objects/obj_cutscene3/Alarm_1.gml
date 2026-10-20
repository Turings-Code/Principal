dialogo_index += 1;

if (dialogo_index < array_length(dialogos)) {
    nome = dialogos[dialogo_index].nome;
    frase = dialogos[dialogo_index].frase;
    contador_texto = 0;
    mostrar_texto = true;
    texto_acelerado = false;

    if (frase == "Fique com estes papéis para saber como os Enigmas Funcionam.") {
        if (instance_exists(obj_inventario)) {
            obj_inventario.nome_item = "Folhas do Enigma";
            obj_inventario.ganhouitem = true;
			global.folhasenigma=true;
        }
    }
} else {
    caixadetexto = false;
    mostrar_texto = false;
	cutscene=false;
	obj_alan.travado=false;
	obj_objetivos.define_objetivo("OBJETIVO - Pegue a Válvula Alfa");
obj_objetivos.define_etapas([
    "- Descriptografe os códigos (0/3)",
    "- Coloque os códigos no baú"
]);

}