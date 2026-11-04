atualizar = function() {
    var _quantidade = 0;

    if (global.fragmento1) _quantidade++;
    if (global.fragmento2) _quantidade++;
    if (global.fragmento3) _quantidade++;

    var _energia = !instance_exists(obj_caixadeenergiaaparece);

    if (_energia && global.valvulamestra && _quantidade == 3) {
		audio_play_sound(snd_objetivoconcluido, 1, false);
        obj_objetivos.define_objetivo("OBJETIVO - Volte para o Turing");
        obj_objetivos.define_etapas([]);
		if(instance_exists(obj_falaturingmansao)){
			with(obj_falaturingmansao){instance_destroy();}}
		if(!instance_exists(obj_falaturingmansao2)){
			instance_create_layer(obj_turing.x, obj_turing.y, "Instances", obj_falaturingmansao2);}
    } else {
		audio_play_sound(snd_objetivo, 1, false);
        obj_objetivos.define_objetivo("OBJETIVO - Abra a Sala da Bombe");

        obj_objetivos.define_etapas([
            {
                texto: "- Religue a Energia da Porta",
                feita: _energia
            },
            {
                texto: "- Encontre a Válvula Mestra",
                feita: global.valvulamestra
            },
            {
                texto: "- Encontre os Fragmentos do Código (" + string(_quantidade) + "/3)",
                feita: _quantidade == 3
            }
        ]);
    }
};