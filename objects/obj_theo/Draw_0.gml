
draw_self();
if (keyboard_check(vk_control) && keyboard_check(vk_shift) && keyboard_check(ord("Q"))) {


draw_set_alpha(0.35);
mp_grid_draw(grade);
draw_set_alpha(1);
if (caminho_ok) draw_path(caminho, x, y, true);
draw_set_color(c_lime);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
draw_set_color(c_yellow);
with (obj_collisionblock) draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
with (obj_collisionblocktemp) draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
draw_set_color(c_red);
draw_text(x, y - 150, "usando_caminho=" + string(usando_caminho) + " ok=" + string(caminho_ok));
draw_line(x, y, obj_alan.x, obj_alan.y);
draw_set_color(c_white);
}