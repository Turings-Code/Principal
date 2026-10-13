if (!instance_exists(obj_alan)) {
    var _alan = instance_create_layer(1050, 500, "Instances", obj_alan);
    _alan.direcao = "cima";
    _alan.sprite_index = spr_alanparado;
}
if (instance_exists(obj_alancutscene)) {
    with (obj_alancutscene) { instance_destroy(); }
}