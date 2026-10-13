if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_alan)) {
    if (distance_to_object(obj_alan) < 80 && !instance_exists(obj_enigmaampl)) {
        instance_create_depth(0, 0, -20000, obj_enigmaampl);
    }
}