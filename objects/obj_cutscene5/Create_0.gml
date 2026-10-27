depth = -60000;
cam_zoom_vel = 0.03;
cam_vel = 0.08;

contador_texto = 0;
letras_por_frame = 0.3;
vel = 0.5;
texto_acelerado = false;
pausa_timer = 0;
fade_caixa = 0;
mostrar_texto = true;
caixadetexto = false;
frase = "Nada";
nome = "Nada";
som_blip_id = -1;

shake_ativo = false;
shake_forca = 0;
shake_t = 1;
shake_ox = 0;
shake_oy = 0;

cutscene = false;
iniciar_dialogo = false;
dialogo_index = -1;
dialogos = [
    { nome: "Alan", frase: "Fala de teste." }
];

bloco_fase1 = noone;

turingentrahut6=false;
radio_dialogo_feito = false;
radio_timer = -1;
dialogo_radio = false;
dialogos_radio = [
    { nome: "Alan ", frase: "Esse é o rádio? Droga está em Alemão! Como vou entender isso?" },
    { nome: "Alan ", frase: "Melhor eu abrir a porta e pedir ajuda ao senhor Turing." }
];

fase_entrada_hut6 = 0;
vel_entrada_hut6 = 2;