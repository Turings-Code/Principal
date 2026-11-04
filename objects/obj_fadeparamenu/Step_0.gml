var _cam = view_camera[0];
x = camera_get_view_x(_cam);
y = camera_get_view_y(_cam);


if (estado == 0) {
    image_alpha += fade_vel;
    if (image_alpha >= 1) {
        image_alpha = 1;
        estado = 1;
        room_goto(rm_menu);
    }
}
else if (estado == 1) {
    if (room == rm_menu) estado = 2;
}
else if (estado == 2) {
    image_alpha -= fade_vel;
    if (image_alpha <= 0) instance_destroy();
}