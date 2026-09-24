var target_x = clamp(mouse_x, 1060, 1360);
var target_y = clamp(mouse_y, 600, 730);

x = lerp(x, target_x, 0.1);
y = lerp(y, target_y, 0.1);

if (mouse_check_button(mb_right) && mouse_check_button(mb_left)) {
	sprite_index = spr_Mouseambos;
}
else if (mouse_check_button(mb_left)) {
    sprite_index = spr_Mouseesquerdo;
}
else if (mouse_check_button(mb_right)) {
    sprite_index = spr_Mousedireito; 
}
else {
    sprite_index = spr_Mouse;
}