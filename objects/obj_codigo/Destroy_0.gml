if(global.codigohut6){
if (!instance_exists(obj_objetivos)) {
    instance_create_depth(0, 0, -100000, obj_objetivos);
}
audio_play_sound(snd_objetivo, 1, false);
obj_objetivos.define_objetivo("OBJETIVO - Pegue a Válvula Beta");
obj_objetivos.define_etapas([
    { texto: "- Ache o código na Registration Room", feita: true },
    "- Vá até o rádio na Machine Room"
]);
}