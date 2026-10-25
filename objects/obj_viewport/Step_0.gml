var _fala = (instance_exists(obj_cutscene2) && obj_cutscene2.caixadetexto)
         || (instance_exists(obj_cutscene3) && obj_cutscene3.caixadetexto)
         || (instance_exists(obj_cutscene4) && obj_cutscene4.caixadetexto);

if (!_fala) {
    var _w = lerp(camera_get_view_width(cam), cam_width, 0.1);
    var _h = lerp(camera_get_view_height(cam), cam_height, 0.1);
    camera_set_view_size(cam, _w, _h);

    if (instance_exists(obj_alan)) {
        var target_x = obj_alan.x - _w / 2;
        var target_y = obj_alan.y - _h / 2;

        var new_x = lerp(camera_get_view_x(cam), target_x, 0.1);
        var new_y = lerp(camera_get_view_y(cam), target_y, 0.1);

        new_x = clamp(new_x, 0, room_width - _w);
        new_y = clamp(new_y, 0, room_height - _h);

        camera_set_view_pos(cam, new_x, new_y);
    }
}