depth = -20000;
cam_zoom_vel = 0.03;
cam_vel = 0.08;
cutscene = false;

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

delay_inicio = 120;

dialogo_index = -1;
dialogos = [
    { nome: "Alan", frase: "O que aconteceu? Onde estamos?" },
    /*{ nome: "Theo", frase: "Que lugar é esse? Porque que você foi quebrar o enigma, Alan?" },
	{ nome: "Alan", frase: "O que que vamos fazer agora, Theo?" },
	{ nome: "Theo", frase: "Como que vamos voltar pra casa agora?" }*/
];

fase = 1;
turing_sobe = false;
turing_alvo_y = 600;
turing_vel = 3;
dialogos_turing = [
    { nome: "???", frase: "Hello World!" },
	/*{ nome: "???", frase: "Quem são vocês? O que estão fazendo aqui?" },
	{ nome: "Theo", frase: "Desculpa senhor! É que uma caixa misteriosa trouxe a gente aqui..." },
	{ nome: "???", frase: "Vocês se perderam?" },
	{ nome: "Alan", frase: "Isso mesmo! Pode me dizer em que bairro estamos?" },
	{ nome: "???", frase: "Estamos em Bletchley. Como entraram aqui? Passaram pelos guardas?" },
	{ nome: "Theo", frase: "Meu primo quebrou uma caixa chamada Enigma, e nos trouxe até aqui." },
	{ nome: "???", frase: "Enigma? Onde vocês acharam isso?" },
	{ nome: "Alan", frase: "Isso não importa, pode nos ajudar a voltar para casa?" },
	{ nome: "???", frase: "Espera, de que ano vocês são?" },
	{ nome: "Alan", frase: "Como assim tio, estamos em 2026." },
	{ nome: "???", frase: "Foi como eu imaginei. O Enigma deve ter aberto uma fenda temporal," },
	{ nome: "???", frase: "e trazido vocês para o meu presente." },
	{ nome: "Turing", frase: "Me chamem de Turing. Acho que posso ajudar vocês a voltarem para casa." },
	{ nome: "Theo", frase: "Que papo é esse? Como assim viemos para seu presente?" },
	{ nome: "Turing", frase: "Estamos em 1940." }, 
	{ nome: "Turing", frase: "Aqui é Bletchley Park, centro de criptoanálise do Reino Unido." },
	{ nome: "Alan", frase: "Como voltamos para o nosso presente, senhor Turing?" },
	{ nome: "Turing", frase: "Isso é complicado. Os Enigmas daqui não teriam como levá-los de volta." },
	{ nome: "Turing", frase: "Mas acho que tem outra maneira de levar vocês ao seu presente." },
	{ nome: "Turing", frase: "Estou desenvolvendo uma máquina, a Bombe, dentro de um laboratório." },
	{ nome: "Turing", frase: "Mas meu comandante está me impedindo de continuar a fazer ela." },
	{ nome: "Theo", frase: "Onde fica essa máquina?" },
	{ nome: "Turing", frase: "Ela fica na Mansão de Bletchley Park, nosso edifício principal." },
	{ nome: "Turing", frase: "Eu não tenho mais acesso a ela, mas estava prestes de terminá-la." },
	{ nome: "Turing", frase: "Faltam 3 válvulas para acabar a construção, mas não consegui pegar todas." },
	{ nome: "Turing", frase: "Se me ajudarem a pegar todas válvulas e entrar na Mansão," },
	{ nome: "Turing", frase: "Posso terminar a Bombe, e usá-la para levar vocês a sua linha do tempo." },
	{ nome: "Alan", frase: "E como é que vamos pegar essas válvulas?" },
	{ nome: "Turing", frase: "Acho que o conhecimento moderno de vocês pode me ajudar." },
	{ nome: "Turing", frase: "A primeira válvula, a Válvula Alfa está trancada em um báu na Hut 8." },
	{ nome: "Turing", frase: "A Hut 8 é minha unidade de decifrar mensagens." },
	{ nome: "Turing", frase: "Nossa equipe não descobriu a criptografia e não abrimos o baú ainda." },
	{ nome: "Theo", frase: "E como chegamos a essa Hut?" },
	{ nome: "Turing", frase: "Me sigam, e tentem não chamar atenção, pois não deveriam estar aqui." },*/
	{ nome: "Turing", frase: "Fiquem com esse mapa também, e tentem não se perder." },
];