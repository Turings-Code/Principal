if (instance_exists(obj_alan)) {
    var target_x = obj_alan.x - cam_width / 2;
    var target_y = obj_alan.y - cam_height / 2;

    var cam_x = camera_get_view_x(cam);
    var cam_y = camera_get_view_y(cam);

    var new_x = lerp(cam_x, target_x, 0.1);
    var new_y = lerp(cam_y, target_y, 0.1);

    new_x = clamp(new_x, 0, room_width - cam_width);
    new_y = clamp(new_y, 0, room_height - cam_height);

    camera_set_view_pos(cam, new_x, new_y);
}

