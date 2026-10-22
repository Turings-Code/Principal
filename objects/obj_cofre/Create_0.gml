image_xscale = 5.6;
image_yscale = 5.6;
image_alpha = 0;
fade_speed = 0.1;
fading_out = false;
delay = 10;
depth = -50000;
escuridao = 0.7;

areas_base = [
    [430, 446, 455, 460],
    [430, 461, 454, 479],
    [430, 483, 454, 496],
    [430, 500, 453, 515],
    [494, 443, 521, 458],
    [494, 462, 521, 477],
    [494, 485, 521, 496],
    [494, 500, 521, 516]
];

desloca_x = 0;
desloca_y = 0;

areas_cofre = [];

for (var i = 0; i < array_length(areas_base); i++) {
    array_push(areas_cofre, [
        areas_base[i][0] + desloca_x,
        areas_base[i][1] + desloca_y,
        areas_base[i][2] + desloca_x,
        areas_base[i][3] + desloca_y
    ]);
}

for (var i = 0; i < array_length(areas_base); i++) {
    array_push(areas_cofre, [
        areas_base[i][0] + 233 + desloca_x,
        areas_base[i][1] + desloca_y,
        areas_base[i][2] + 233 + desloca_x,
        areas_base[i][3] + desloca_y
    ]);
}

for (var i = 0; i < array_length(areas_base); i++) {
    array_push(areas_cofre, [
        areas_base[i][0] + 443 + desloca_x,
        areas_base[i][1] + desloca_y,
        areas_base[i][2] + 443 + desloca_x,
        areas_base[i][3] + desloca_y
    ]);
}

digitos_base = [
    [393, 447],
    [394, 487],
    [459, 447],
    [459, 487]
];

digitos_desloca = [1, 235, 517];
digito_escala = 4;

digitos_pos = [];

for (var g = 0; g < array_length(digitos_desloca); g++) {
    for (var i = 0; i < array_length(digitos_base); i++) {
        array_push(digitos_pos, [digitos_base[i][0] + digitos_desloca[g], digitos_base[i][1]]);
    }
}

digitos = array_create(array_length(digitos_pos), 0);

senhas = [
    [11, 0, 5, 9],
    [6, 2, 7, 4],
    [12, 15, 2, 1]
];

cadeado1 = false;
cadeado2 = false;
cadeado3 = false;

cadeado1_ok = false;
cadeado2_ok = false;
cadeado3_ok = false;

var _cam0 = view_camera[0];
var _cxm = camera_get_view_x(_cam0) + camera_get_view_width(_cam0) / 2;
var _cym = camera_get_view_y(_cam0) + camera_get_view_height(_cam0) / 2;

cadeado1_inst = instance_create_depth(_cxm, _cym, depth - 1, obj_cadeado1);
cadeado2_inst = instance_create_depth(_cxm, _cym, depth - 1, obj_cadeado2);
cadeado3_inst = instance_create_depth(_cxm, _cym, depth - 1, obj_cadeado3);
folhahex_inst = instance_create_depth(_cxm, _cym, depth - 2, obj_folhahexadecimal);

aberto_cofre = false;

valvula_inst = noone;