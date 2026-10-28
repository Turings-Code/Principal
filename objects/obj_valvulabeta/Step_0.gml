var _dist = point_distance(mouse_x, mouse_y, x, y);
var _perto = _dist < sprite_width * 0.5 + 40;

var _t = 1 - clamp((_dist - dist_min) / (dist_max - dist_min), 0, 1);
escala_alvo = lerp(escala_base, escala_max, _t);

image_xscale = lerp(image_xscale, escala_alvo, lerp_vel);
image_yscale = image_xscale;

if (_perto) obj_cursormouse.mao = true;

if (_perto && mouse_check_button_pressed(mb_left)) {
    global.valvulabeta = true;

    with (obj_radiotampa) instance_destroy();
    with (obj_radioaparece) instance_destroy();
    if (instance_exists(obj_radiofundo)) obj_radiofundo.fading_out = true;
	if (instance_exists(obj_inventario)) {
    obj_inventario.nome_item = "Válvula Beta";
    obj_inventario.ganhouitem = true;
}
    instance_destroy();
}