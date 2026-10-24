alarm[0] = 300;
maeentra = false;
acao1 = true;
depth = -20000;
cam_zoom_vel = 0.03;

contador_texto = 0;
letras_por_frame = 0.3;
vel = 0.5;
texto_acelerado = false;
pausa_timer = 0;
timer_frase = 0;
fade_caixa = 0;
mostrar_texto = true;
caixadetexto = false;
maesai = false;
theoentra = false;
enigma_visto = false;
fase = 1;

audio_play_sound(snd_Jogando, 0.7, true);

som_falando_id = -1;
frase = "Nada";
nome = "Nada";

som_blip_id = -1;

dialogo_index = -1;
dialogos = [
    { nome: "Mãe", frase: "Filho, já deu, né? Não basta a madrugada, vai passar a tarde inteira aí também?" },
    { nome: "Mãe", frase: "Quando você vai dormir em? Quando você vai viver?" },
    { nome: "Alan", frase: "Mas mãe, eu preciso passar dessa fase pra ..." },
    { nome: "Mãe", frase: "Nada disso! Sai desse computador agora! Seu primo acabou de chegar." }
];

dialogos_mae = dialogos;
dialogos = [
    { nome: "Mãe", frase: "Alan!" }
];
intro_mae = true;
alan_anda = false;
alan_vel = 4;
alan_desloca = 150;
alan_alvo_x = 0;
delay_antes = 0;
delay_depois = 0;
delay_tempo = 60;

dialogos_theo = [
    { nome: "Theo", frase: "Alan, você não vai acreditar nisso aqui!" },
    { nome: "Alan", frase: "O que é dessa vez, Theo?" },
    { nome: "Theo", frase: "Vem dar uma olhada nisso aqui!" }
];

dialogos_enigma = [
    { nome: "Theo", frase: "Você não tem noção do que é isso, Alan!" },
	{ nome: "Theo", frase: "Meu pai achou essa relíquia no sótão da casa do nosso avô." },
    { nome: "Alan", frase: "Um Caixote de madeira escrito Enigma?" },
    { nome: "Theo", frase: "Alan, isso aqui é uma máquina de criptografia!" },
	{ nome: "Theo", frase: "É um Enigma alemão, Alan! Usado na Segunda Guerra Mundial!" },
	{ nome: "Alan", frase: "Máquina de criptografia? Isso daí nem tem cabos ou uma tela, Theo." },
	{ nome: "Theo", frase: "Será que tem algo dentro? Me ajuda a abrir, Alan!" },
	{ nome: "Alan", frase: "Deixa eu dar uma olhadinha..." }
];

theoanda = 0;
theo_vel = 5;
theo_desce = 60;
theo_esq = 120;
theo_alvo_y = 0;
theo_alvo_x = 0;

puxando = false;
puxa_vel = 0.2;
puxa_acel = 0.2;
puxa_alvo = noone;
shake_ativo = false;
shake_forca = 0.7;
shake_t = 1;
shake_ox = 0;
shake_oy = 0;

quebrou_enigma = false;

dialogos_quebra = [
    { nome: "Theo", frase: "Você quebrou ele? Não era pra abrir desse jeito, Alan!" },
	{ nome: "Alan", frase: "Pensei que uma máquina de criptografia seria mais resitente." },
    { nome: "Alan", frase: "Peraí, porque é que o enigma tá brilhando por dentro?" },
	{ nome: "Theo", frase: "O chão tá vibrando ou é impressão minha?" },
	{ nome: "Alan", frase: "Desliga isso, Theo! Tá começando a me puxar!" },
	{ nome: "Theo", frase: "Se segura, Alan!" },
	{ nome: "Alan", frase: "Não dá mais, Theo!" },
	{ nome: "Alan", frase: "Aaaaaahhhhhh!" },
];

cam_alvo = noone;
cam_x = 0;
cam_y = 0;
cam_ativa = false;
cam_vel = 0.08;

