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

som_falando_id = -1;
frase = "Nada";
nome = "Nada";

som_blip_id = -1;

dialogo_index = -1;
dialogos = [
    { nome: "Mainha", frase: "Seu moleque da miséra! Já é de manhãzinha e cê ainda tá agarrado nesse trem?" },
    { nome: "Mainha", frase: "Cabra doido, quando é que cê vai dormir, hein? Quando é que cê vai viver a vida?" },
	{ nome: "Alan", frase: "Mainha, mas eu preciso passar dessa fase, oxe!" },
	{ nome: "Mainha", frase: "Cabra doido, esquece essa fase! Sai dai logo que teu primo ta chegando!" },
	{ nome: "Alan", frase: "Ave Maria, mainha, deixa de aperreio! Já vou, cabra!" }

];