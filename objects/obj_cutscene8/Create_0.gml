obj_alan.travado = true;
obj_alan.theosegue = false;

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

cutscene = true;
iniciar_dialogo = false;
dialogo_index = -1;
dialogos = [
    { nome: "Turing", frase: "Era pra essa porta aqui abrir." },
    /*{ nome: "Theo", frase: "Essa é a sala da Bombe?" },
	{ nome: "Turing", frase: "Isso mesmo. Acho que teremos que mudar o plano." },
	{ nome: "Turing", frase: "Instalaram uma fechadura por senha nessa porta." },
	{ nome: "Turing", frase: "E aparentemente a energia da fechadura também está sem energia." },
	{ nome: "Alan", frase: "Então como vamos entrar na Sala?" },
	{ nome: "Turing", frase: "Bom, agora vão ter alguns passos a mais." },
	{ nome: "Turing", frase: "Vocês precisam religar a energia, e achar o código da fechadura." },
	{ nome: "Turing", frase: "E também achar a última válvula. Vou ficar esperando aqui." },
	{ nome: "Turing", frase: "Voltem quando tiverem conseguido tudo." },*/
];

andando8 = true;
vel_andar8 = 3;
alvo_y_turing8 = 4930;
espera8 = -1;
espera8_tempo = 120;