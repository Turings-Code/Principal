if(!obj_cutscene3.parte1){ visible=false;}
else{visible=true;}
if (obj_cutscene3.caixadetexto) exit;

var _cam = view_camera[0];
var _vx = camera_get_view_x(_cam);
var _vy = camera_get_view_y(_cam);
var _vw = camera_get_view_width(_cam);
var _vh = camera_get_view_height(_cam);

x = _vx + _vw - sprite_width - margem_x;

aberto_y = _vh - sprite_height;
oculto_y = _vh - aba_altura;

if (primeiro) {
    y_atual = oculto_y;
    primeiro = false;
}

var _sobre_aba = position_meeting(mouse_x, mouse_y, id);
if (_sobre_aba && mouse_check_button_pressed(mb_left)) {
    aberto = !aberto;
}

var _alvo = aberto ? aberto_y : oculto_y;
y_atual = lerp(y_atual, _alvo, lerp_vel);
if (abs(y_atual - _alvo) < 0.5) y_atual = _alvo;

y = _vy + y_atual;

image_speed = 0;

if (global.um) {
    image_index = 12;
} else if (global.quinze) {
    image_index = 11;
} else if (global.dois2) {
    image_index = 10;
} else if (global.doze) {
    image_index = 9;
} else if (global.quatro) {
    image_index = 8;
} else if (global.dois) {
    image_index = 7;
} else if (global.sete) {
    image_index = 6;
} else if (global.seis) {
    image_index = 5;
} else if (global.nove) {
    image_index = 4;
} else if (global.zero) {
    image_index = 3;
} else if (global.cinco) {
    image_index = 2;
} else if (global.onze) {
    image_index = 1;
} else {
    image_index = 0;
}

if (_sobre_aba) {
    obj_cursormouse.mao = true;
}