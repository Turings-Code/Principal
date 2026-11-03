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
tipo_dialogo = 1;
shake_ativo = false;
shake_forca = 0;
shake_t = 1;
shake_ox = 0;
shake_oy = 0;
obj_alan.theosegue=false;
cutscene = true;
iniciar_dialogo = false;
dialogo_index = -1;
dialogos = [
    { nome: "Theo", frase: "Onde está a Bombe?" },
    { nome: "Turing", frase: "Venham comigo." }
];

espera9 = 60;

if (instance_exists(obj_alan)) obj_alan.travado = true;

dialogo_final1 = false;
dialogo_atual_final1 = false;
dialogos_final1 = [
    { nome: "Turing", frase: "Aqui estamos." },
	{ nome: "Turing", frase: "Não pensei que consegueria ver minha máquina outra vez." },
	{ nome: "Turing", frase: "Vocês foram de grande ajuda pra mim, garotos." },
	{ nome: "Turing", frase: "É só me entregarem as 3 válvulas e eu posso consertá-la." },
	{ nome: "Alan", frase: "Aqui está, senhor Turing." }
];

dialogo_final2 = false;
dialogo_atual_final2 = false;
dialogos_final2 = [
    { nome: "Turing", frase: "Já acabei de consertar." },
    { nome: "Turing", frase: "Não acredito, finalmente consegui terminar minha máquina." },
	{ nome: "Turing", frase: "Ninguém conseguiu acreditar em mim até agora." },
	{ nome: "Turing", frase: "Obrigado garotos." },
	{ nome: "Theo", frase: "Nós já podemos voltar ao presente?" },
	{ nome: "Turing", frase: "É só fechar os olhos." },
	{ nome: "Turing", frase: "Por vezes, são as pessoas de quem ninguém imagina nada," },
	{ nome: "Turing", frase: "que fazem as coisas que ninguém sequer imagina!" },
];
espera_final2 = 180;
espera_final2_timer = -1;

escurecer = false;
escurecer_alpha = 0;
escurecer_vel = 0.01;