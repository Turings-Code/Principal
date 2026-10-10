var _cam = view_camera[0];
var _cx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
var _cy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2;

instance_create_depth(_cx, _cy, -10000, obj_telapercebido);