if (global.chavecinza && instance_exists(obj_alan)) {
    if (point_distance(x, y, obj_alan.x, obj_alan.y) <= alcance && keyboard_check_pressed(ord("F"))) {
        obj_portamansao.destrancada = true;
		obj_portamansao.image_speed=3;
        var _colisao = instance_position(1902, 3180, obj_collisionblocktemp);
        if (_colisao != noone) {
            with (_colisao) instance_destroy();
        }

        instance_destroy();
    }
}