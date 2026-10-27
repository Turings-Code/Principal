image_xscale = 5.6;
image_yscale = 5.6;
image_speed = 0;
image_index = 0;
sendocriado = true;
image_alpha = 0;
fade_speed = 0.1;

areapergunta = [442, 90, 927, 233];
arearesultado = [556, 131, 806, 489];

areas = [
    [94, 324, 414, 454],
    [186, 531, 508, 662],
    [951, 320, 1271, 453],
    [858, 536, 1179, 667]
];

rodadas = [
    {
        pergunta: "Preciso que o programa transforme os dígitos pares em 0 e ímpares em 1. Como introduzo a variável inteira para armazenar um dígito do código?",
        alts: ["texto dígito", "float dígito", "int dígito", "dígito()"],
        correta: 2
    },
    {
        pergunta: "Como faço um sistema de exibir a mensagem e obter um valor?",
        alts: ["exibir(\"Entre com o dígito:\") escaneia(dígito)", "escaneia(\"Entre com o dígito:\") exibir(dígito)", "escrever(\"Entre com o dígito:\") ler(dígito)", "exibir(dígito) exibir(\"Entre com o dígito:\")"],
        correta: 0
    },
    {
        pergunta: "Perfeito, agora preciso criar uma decisão que verifica se o número é par ou ímpar.",
        alts: ["se(dígito / 2 == 0){   }senão{   }", "enquanto(dígito % 2 == 0){   }", "se(dígito = 2){   }senão{   }", "se(dígito % 2 == 0){   }senão{   }"],
        correta: 3
    },
    {
        pergunta: "Se o número for par, preciso que se torne 0. O que escrevo dentro do se?",
        alts: ["dígito -> 0", "dígito = 0", "exibir(0)", "dígito = 2"],
        correta: 1
    },
    {
        pergunta: "E se for ímpar?",
        alts: ["dígito = 0", "dígito + 1", "dígito = 1", "senão dígito"],
        correta: 2
    },
    {
        pergunta: "Falta somente exibir o resultado!",
        alts: ["exibir(dígito)", "exibir(\"dígito\")", "escaneia(dígito)", "exibir dígito"],
        correta: 0
    }
];

codigo_linhas = [
    { t: "int dígito", r: 0 },
    { t: "exibir(\"Entre com o dígito:\")", r: 1 },
    { t: "escaneia(dígito)", r: 1 },
    { t: "se(dígito % 2 == 0){", r: 2 },
    { t: "    dígito = 0", r: 3 },
    { t: "} senão{", r: 2 },
    { t: "    dígito = 1", r: 4 },
    { t: "}", r: 2 },
    { t: "exibir(dígito)", r: 5 }
];

rodada_atual = 0;
rodadas_completas = 0;
estado = 0;
menu_vis = 0;
acertou = false;
timer = 0;
pausa_resultado = 120;
texto_escala = 0.8;
codigo_escala = 0.45;

desenha_texto_area = function(_txt, _x1, _y1, _x2, _y2, _escmax, _centro) {
    var _w = _x2 - _x1;
    var _h = _y2 - _y1;
    var _e = _escmax;

    while (_e > 0.15 && string_height_ext(_txt, -1, _w / _e) * _e > _h) {
        _e -= 0.05;
    }

    if (_centro) {
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text_ext_transformed((_x1 + _x2) / 2, (_y1 + _y2) / 2, _txt, -1, _w / _e, _e, _e, 0);
    } else {
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_text_ext_transformed(_x1, _y1, _txt, -1, _w / _e, _e, _e, 0);
    }
};

resultado_margem_esq = 25;
resultado_margem_dir = 25;
resultado_margem_topo = 20;

areadigitar = [674, 441, 800, 480];
codigo_apagado = false;
texto_digitado = "";
digitar_max = 200;

codigo_alvo = "273667915517";
etapa_tut = 0;
historico_tut = "";
entrada_tut = "";
erro_tut_timer = 0;
erro_tut_tempo = 120;

if (!variable_global_exists("tutorialprograma")) {
    global.tutorialprograma = false;
}