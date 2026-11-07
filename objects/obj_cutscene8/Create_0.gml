if(!instance_exists(obj_alan)){
	instance_create_layer(500, 500, "Instances", obj_alan);
}
obj_alan.travado = true;
obj_alan.theosegue = false;


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
tipo_dialogo = 0;
cutscene = true;
iniciar_dialogo = false;
dialogo_index = -1;
dialogos = [
    { nome: "Turing", frase: "Era pra essa porta aqui abrir." },
    { nome: "Theo", frase: "Essa é a sala da Bombe?" },
	{ nome: "Turing", frase: "Isso mesmo. Acho que teremos que mudar o plano." },
	{ nome: "Turing", frase: "Instalaram uma fechadura por senha nessa porta." },
	{ nome: "Turing", frase: "E aparentemente a energia da fechadura também está sem energia." },
	{ nome: "Alan", frase: "Então como vamos entrar na Sala?" },
	{ nome: "Turing", frase: "Bom, agora vão ter alguns passos a mais." },
	{ nome: "Turing", frase: "Vocês precisam religar a energia, e achar o código da fechadura." },
	{ nome: "Turing", frase: "E também achar a última válvula. Vou ficar esperando aqui." },
	{ nome: "Turing", frase: "Voltem quando tiverem conseguido tudo." },
];

andando8 = true;
vel_andar8 = 4;
alvo_y_turing8 = 4830;
espera8 = -1;
espera8_tempo = 120;

dialogo2_ativo = false;
dialogos2 = [
    { nome: "Alan", frase: "Consegui ligar a energia!" },
    { nome: "Theo", frase: "Boa Alan, agora devemos ter acesso a mais salas!" },
	{ nome: "Alan", frase: "Espera Theo! Esses cabos estão soltando!" },
	{ nome: "Alan", frase: "Se eu não segurar a energia vai desligar outra vez!" },
	{ nome: "Theo", frase: "Droga! E agora como fazemos?" },
	{ nome: "Alan", frase: "Vou ficar aqui, enquanto isso busque a válvula e o código e abra a porta." },
	{ nome: "Alan", frase: "Quando tiver aberto a porta, me chame de volta!" },
];
dialogo_atual2 = false;

dialogo_mansao = false;
dialogo_atual_mansao = false;
dialogos_mansao = [
    { nome: "Alan", frase: "Me chame depois que abrir a porta da Sala da Bombe!" }
];

dialogo_mansao2 = false;
dialogo_atual_mansao2 = false;
dialogos_mansao2 = [
    { nome: "Theo", frase: "Vamos Alan! O senhor Turing abriu a porta!" },
	{ nome: "Alan", frase: "Ok!" },
];

dialogo_mansaoturing = false;
dialogo_atual_mansaoturing = false;
dialogos_mansaoturing = [
    { nome: "Turing", frase: "Venha até mim quando fizer tudo que precisar." }
];

dialogo_mansaoturing2 = false;
dialogo_atual_mansaoturing2 = false;
dialogos_mansaoturing2 = [
    { nome: "Turing", frase: "Conseguiu tudo?" },
	{ nome: "Theo", frase: "Aqui está o código!" },
	{ nome: "Turing", frase: "Caramba! Muito bem! Onde está o outro rapaz?" },
	{ nome: "Theo", frase: "O meu primo teve que ficar lá em cima pra ligar a energia." },
	{ nome: "Theo", frase: "Vou ir chamá-lo agora!" },
];

dialogo_mansaoturing3 = false;
dialogo_atual_mansaoturing3 = false;
dialogos_mansaoturing3 = [
    { nome: "Turing", frase: "Vocês estão prontos?" },
	{ nome: "Alan", frase: "Vamo nessa!" },
];