depth=-y;
var _travado = false;
with (obj_percepcao) {
    if (percebeu) _travado = true;
}

if (distance_to_object(obj_alan) <= 250 && !criou && !_travado) {
    cria = true;
}

if (cria) {
    var p = instance_create_layer(x, y - 150, "Instances", obj_percepcao);
    p.npc_alvo = id;

    cria = false;
    criou = true;
}

