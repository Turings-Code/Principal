cx = room_width / 2;
cy = room_height / 2;
concluido = false;
inicio = false;

alvos = [];
if (instance_exists(obj_alan)) array_push(alvos, obj_alan);
if (instance_exists(obj_theo)) array_push(alvos, obj_theo);

dados = [];
for (var i = 0; i < array_length(alvos); i++) {
    var _o = alvos[i];
    array_push(dados, {
        r: point_distance(cx, cy, _o.x, _o.y),
        r0: max(point_distance(cx, cy, _o.x, _o.y), 1),
        ang: point_direction(cx, cy, _o.x, _o.y),
        fase: i * 90,
        escala0: _o.image_xscale,
        chegou: false
    });
}

vel_ang = 5;
vel_raio = 0.6;
vel_raio_prop = 0.003;
ondulacao = 120;
escala_min = 0.25;