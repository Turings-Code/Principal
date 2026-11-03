if (instance_exists(obj_alan)) {
    obj_alan.travado = true;
    obj_alan.direcao = "cima";
    obj_alan.sprite_index = spr_alanparado;
    obj_alan.theosegue = false;
}
if (instance_exists(obj_theo)) {
    obj_theo.sprite_index = spr_theoparado;
}

if (!concluido) {
    var _todos = true;

    for (var i = 0; i < array_length(alvos); i++) {
        var _o = alvos[i];
        var _d = dados[i];

        if (!instance_exists(_o)) continue;

        if (!_d.chegou) {
            _d.r = max(0, _d.r - vel_raio - _d.r * vel_raio_prop);
            _d.ang += vel_ang + (1 - _d.r / _d.r0) * 6;
            _d.fase += 7;

            var _raio = _d.r + sin(degtorad(_d.fase)) * ondulacao * (_d.r / _d.r0);
            _raio = max(_raio, 0);

            _o.x = cx + lengthdir_x(_raio, _d.ang);
            _o.y = cy + lengthdir_y(_raio, _d.ang);

            var _e = _d.escala0 * lerp(escala_min, 1, _d.r / _d.r0);
            _o.image_xscale = _e;
            _o.image_yscale = _e;

            if (_d.r <= 3) {
                _d.chegou = true;
                _o.x = cx;
                _o.y = cy;
            } else {
                _todos = false;
            }
        }
    }

    if (_todos) {
        concluido = true;
        var _t = instance_create_layer(cx, cy, "Instances", obj_troca);
        _t.image_xscale = 5;
        _t.image_yscale = 5;
    }
}