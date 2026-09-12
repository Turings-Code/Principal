var escala = 1.2;
// Create do obj_viewport
cam = view_camera[0];
cam_width = 1365 * escala;   // 2047.5
cam_height = 770 * escala;   // 1155

camera_set_view_size(cam, cam_width, cam_height);

view_set_visible(0, true);
view_set_wport(0, cam_width);
view_set_hport(0, cam_height);

