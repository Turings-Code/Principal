
image_xscale = 5.6;
image_yscale = 5.6;
image_alpha = 0;
fade_speed = 0.1;
fading_out = false;
delay = 10;
depth = -50000;
escuridao = 0.7;
image_speed = 0;
image_index = 0;

ultima_tecla = -1;
timer_tecla = 0;
tempo_tecla = 6;

cifra = "ZKUWBGXDANFSYCHMJEPOTQLVIR";
digitado = "";

referencia_x = 2215;
referencia_y = 2100;

texto_offset_x = 1743 - referencia_x;
texto_offset_y = 2300 - referencia_y;
texto_limite_offset_x = 2424 - referencia_x;
texto_desloca = 40;
fonte_escala = 5.6;
fonte_espaco = 30;
letra_larg = sprite_get_width(spr_fontetela) * fonte_escala;

texto_x1 = 1733;
texto_x2 = 2364;
texto_y = 248;

fase = 1;
erro_timer = 0;
erro_tempo = 120;

areas_offset = [
    [2529 - referencia_x, 2279 - referencia_y, 2585 - referencia_x, 2356 - referencia_y],
    [2619 - referencia_x, 2276 - referencia_y, 2675 - referencia_x, 2351 - referencia_y],
    [2518 - referencia_x, 2370 - referencia_y, 2571 - referencia_x, 2447 - referencia_y],
    [2601 - referencia_x, 2371 - referencia_y, 2657 - referencia_x, 2447 - referencia_y]
];

areas = array_create(4);

for (var i = 0; i < array_length(areas_offset); i++) {
    areas[i] = [
        0,
        0,
        0,
        0
    ];
}

erro_timer = 0;
erro_tempo = 60;
fase = 1;
sprite_index = spr_enigma3fase1;

palavras = ["DOZE", "DOIS", "QUINZE", "UM"];
palavra_atual = 0;
acerto_timer = 0;
acerto_tempo = 60;
acerto_pisca = 15;

if (!variable_global_exists("onze")) {
    global.doze = false;
    global.dois2 = false;
    global.quinze = false;
    global.um = false;
}

palavra_atual = 0;
if (global.doze) palavra_atual = 1;
if (global.dois2) palavra_atual = 2;
if (global.quinze) palavra_atual = 3;
if (global.um) palavra_atual = 4;
