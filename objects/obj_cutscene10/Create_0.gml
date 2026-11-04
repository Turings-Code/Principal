if(!instance_exists(obj_alan)){
	instance_create_layer(500, 500, "Instances", obj_alan);
}
depth = -60000;
cam_zoom_vel = 0.03;
cam_vel = 0.08;
obj_alan.travado=true;
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
iniciar_dialogo = true;
dialogo_index = -1;
fase10 = 0;

dialogos1 = [
    { nome: "Alan", frase: "Voltamos Theo!." },
	{ nome: "Theo", frase: "Deu certo!" },
	{ nome: "Theo", frase: "Quem era aquele cara?" },
	{ nome: "Alan", frase: "Será que a máquina dele ajudou em alguma coisa?" },
	{ nome: "Theo", frase: "Vou tentar pesquisar o nome dele! Alan Turing né?" },
];
dialogos2 = [
    { nome: "Theo", frase: "Pai da computação?" },
	{ nome: "Alan", frase: "Como assim, Theo? Achou alguma coisa?" },
];
dialogos3 = [
    { nome: "Mãe", frase: "Garotos onde vocês estavam?" },
	{ nome: "Theo", frase: "Bom, meio que aquela caixa-" },
	{ nome: "Mãe", frase: "Deixa pra lá, seu pai tá te esperando, Theo!" },
	{ nome: "Alan", frase: "Então... Até outro dia Theo!" },
];
dialogos = dialogos1;

theo_alvo_x = 1293;
theo_alvo_y = 586;
theo_vel = 6;
espera10 = 0;
espera10_tempo = 180;

mae_vel = 5;
mae_alvo_y = 850;

if (instance_exists(obj_alan)) {
    obj_alan.travado = true;
    obj_alan.theosegue = false;
}

saida10 = false;
theo_saida_fase = 0;
theo_ponto_x = 1049;
theo_ponto_y = 866;
saida_vel = 5;