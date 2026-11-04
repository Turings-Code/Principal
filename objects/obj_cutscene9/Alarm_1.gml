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
	
	/*if(tipo_dialogo==2){
		global.valvulaalfa=false;
		global.valvulabeta=false;
		global.valvulamestra=false;}*/
    if (tipo_dialogo == 1) {
        cutscene = false;
        if (instance_exists(obj_turing)) obj_turing.salafinal = true;
        if (instance_exists(obj_alan)) {
            obj_alan.theosegue = true;
            obj_alan.travado = false;
        }
    }
    else if (dialogo_atual_final1) {
    dialogo_atual_final1 = false;
	audio_play_sound(snd_objetivo, 1, false);
	obj_objetivos.define_objetivo("OBJETIVO - Encaixe as Válvulas na Bombe");
        obj_objetivos.define_etapas([]);
    cutscene = false;
    if (instance_exists(obj_alan)) obj_alan.travado = false;
}
    else if (dialogo_atual_final2) {
    dialogo_atual_final2 = false;
    turing_indo = true;
    if (instance_exists(obj_alan)) obj_alan.travado = true;
}
else if (dialogo_atual_final3) {
    dialogo_atual_final3 = false;
    cutscene = false;
	if (instance_exists(obj_alan)) {
		audio_play_sound(snd_futuro, 1, false);
        var _t = instance_create_layer(obj_alan.x, obj_alan.y, "Instances", obj_troca);
        _t.image_xscale = 7;
        _t.image_yscale = 7;
    }
    if (instance_exists(obj_alan)) obj_alan.travado = false;
}
}