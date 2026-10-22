var _cam = view_camera[0];
var _vx = camera_get_view_x(_cam);
var _vy = camera_get_view_y(_cam);

x = _vx + margem_x;

var _oculto = aba_altura - sprite_height;
var _aberto = 0;

if (primeiro) {
    y_atual = _oculto;
    primeiro = false;
}

if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left)) {
    aberto = !aberto;
}

var _alvo = aberto ? _aberto : _oculto;
y_atual = lerp(y_atual, _alvo, lerp_vel);
if (abs(y_atual - _alvo) < 0.5) y_atual = _alvo;

y = _vy + y_atual;

if (instance_exists(obj_cofre)) {
    image_alpha = obj_cofre.image_alpha;
}

if (position_meeting(mouse_x, mouse_y, id)) {
    obj_cursormouse.mao = true;
}