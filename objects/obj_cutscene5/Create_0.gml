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
obj_alan.theosegue=false;

cutscene = false;
iniciar_dialogo = false;
dialogo_index = -1;
dialogos = [
    { nome: "Alan", frase: "Fala de teste." }
];

dialogos1 = [
    { nome: "Turing", frase: "Conseguiu pegar a válvula?" },
	/*{ nome: "Alan", frase: "Não! Como vou mexer nesse rádio, eu não sei alemão!" },
	{ nome: "Turing", frase: "Você precisa colocar uma frequência de quatro dígitos no rotator." },
	{ nome: "Theo", frase: "Então o código é a frequência?" },
	{ nome: "Alan", frase: "Esse código é muito grande, e com certeza está criptografado." },
	{ nome: "Alan", frase: "Acho que tenho uma ideia de como resolver, mas demorará um pouco." },
	{ nome: "Theo", frase: "Vamos levar o rádio até a Hut 8 então!" },
	{ nome: "Turing", frase: "De maneira alguma! Não podem perceber que o rádio sumiu!" },
	{ nome: "Turing", frase: "Não tem como ser mais rápido?" },
	{ nome: "Alan", frase: "Até teria, com um pouco de código..." },
	{ nome: "Turing", frase: "Vou trancar a porta, e tente descobrir logo como resolver isso!" },*/
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
vel_entrada_hut6 = 4;
fase_alan_hut6 = 0;
fase_saida_turing = 0;
alvo_y_turing = 0;
alvo_x_turing = 0;