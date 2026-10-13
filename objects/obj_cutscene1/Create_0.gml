alarm[0] = 300;
maeentra = false;
acao1 = true;
depth = -20000;

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
theoentra=false;

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
fase = 1;

dialogos_theo = [
    { nome: "Theo", frase: "Alan, você não vai acreditar nisso aqui!" },
    { nome: "Alan", frase: "O que é dessa vez, Theo?" },
	{ nome: "Theo", frase: "Vem dar uma olhada nisso aqui!" },
];

/*{ nome: "Mainha", frase: "Seu moleque da miséra! Já é de manhãzinha e cê ainda tá agarrado nesse trem?" },
    { nome: "Mainha", frase: "Cabra doido, quando é que cê vai dormir, hein? Quando é que cê vai viver a vida?" },
	{ nome: "Alan", frase: "Mainha, mas eu preciso passar dessa fase, oxe!" },
	{ nome: "Mainha", frase: "Cabra doido, esquece essa fase! Sai dai logo que teu primo ta chegando!" },
	{ nome: "Alan", frase: "Ave Maria, mainha, deixa de aperreio! Já vou, cabra!" }*/
	
	theoanda = 0;        // 0 = parado, 1 = descendo, 2 = indo pra esquerda
theo_vel = 5;
theo_desce = 60;     // quanto desce (px)
theo_esq = 120;      // quanto vai pra esquerda (px)
theo_alvo_y = 0;
theo_alvo_x = 0;