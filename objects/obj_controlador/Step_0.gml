
if (keyboard_check_pressed(ord("F")) || keyboard_check_pressed(vk_f11)) {
    window_set_fullscreen(!window_get_fullscreen());
}

if (keyboard_check_pressed(vk_escape)) {
    window_set_fullscreen(false);
}
if(room==rm_menu){
var scale_x = window_get_width() / room_width;
var scale_y = window_get_height() / room_height;

var wx = window_mouse_get_x();
var wy = window_mouse_get_y();

var cx = clamp(wx, 930 * scale_x, 1300 * scale_x);
var cy = clamp(wy, 560 * scale_y, 730 * scale_y);

if (wx != cx || wy != cy) {
    window_mouse_set(cx, cy);
}
}
if (instance_exists(obj_Textaofinal)) {
	if (obj_Textaofinal.y <= -2800) {
		jamorreu = true;
		finalreal = 1;
		} }