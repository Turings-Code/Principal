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
	if(tipo_dialogo==3){
		var _t = instance_create_layer(obj_alan.x, obj_alan.y, "Instances", obj_troca);
_t.image_xscale = 7;
_t.image_yscale = 7;
		audio_play_sound(snd_futuro, 1, false);
		}
	if(tipo_dialogo==2){
		global.valvulaalfa=false;
		global.valvulabeta=false;
		global.valvulamestra=false;}
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
        espera_final2_timer = espera_final2;
        if (instance_exists(obj_turing)) obj_turing.sprite_index = spr_turingparadocima;
        if (instance_exists(obj_alan)) obj_alan.travado = true;
    }
    else if (dialogo_atual_final2) {
        dialogo_atual_final2 = false;
        cutscene = false;
        if (instance_exists(obj_alan)) obj_alan.travado = false;
    }
}