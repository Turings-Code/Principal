if (instance_exists(obj_folha1) || instance_exists(obj_folha2) || instance_exists(obj_codigo)) {
    var _alvo = 1;
    // some quando as duas estão sumindo
    var _f1 = instance_exists(obj_folha1) && !obj_folha1.fading_out;
    var _f2 = instance_exists(obj_folha2) && !obj_folha2.fading_out;
    if (!_f1 && !_f2) _alvo = 0;
    image_alpha = clamp(image_alpha + (_alvo == 1 ? fade_speed : -fade_speed), 0, 1);
} else {
    instance_destroy();
}