image_xscale=5.6;
image_yscale=5.6;
image_alpha = 0;
fade_speed = 0.1;
fading_out = false;
delay = 10; // frames antes de poder fechar
depth=-50000;
escuridao = 0.7; // 0 = nada, 1 = preto total

areas_cabos = [
    [250, 100, 303, 150],
    [254, 234, 300, 280],
    [254, 367, 300, 415],
    [255, 506, 300, 548],
    [253, 629, 300, 678],

    [750, 100, 803, 150],
    [754, 234, 800, 280],
    [754, 367, 800, 415],
    [755, 506, 800, 548],
    [753, 629, 800, 678]
];

areas_conectores = [
    [600, 100, 653, 150],
    [604, 234, 650, 280],
    [604, 367, 650, 415],
    [605, 506, 650, 548],
    [603, 629, 650, 678],
	
    [1090, 100, 1143, 150],
    [1094, 234, 1140, 280],
    [1094, 367, 1140, 415],
    [1095, 506, 1140, 548],
    [1093, 629, 1140, 678]
];

conectores_correspondentes = [
    1, 3, 0, 4, 2,
    6, 8, 9, 5, 7
];
cabos_conectados = array_create(10, false);

cores_cabos = [
    c_red,
    c_blue,
    c_yellow,
    c_green,
    c_purple,
    c_orange,
    c_aqua,
    c_fuchsia,
    c_lime,
    c_white
];

conclusao_ativada = false;