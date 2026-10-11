var _cam = view_camera[0];
draw_set_color(c_black);
draw_set_alpha(image_alpha * escuridao);
draw_rectangle(camera_get_view_x(_cam) - 1, camera_get_view_y(_cam) - 1,
    camera_get_view_x(_cam) + camera_get_view_width(_cam) + 1,
    camera_get_view_y(_cam) + camera_get_view_height(_cam) + 1, false);
draw_set_alpha(1);
draw_set_color(c_white);