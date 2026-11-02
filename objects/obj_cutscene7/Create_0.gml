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
dialogos = [];

dialogo1 = false;
dialogo1_ativo = false;

dialogos1 = [
    { nome: "Alan", frase: "Então, qual o plano?" },
    /*{ nome: "Turing", frase: "Vamos todos entrar, e eu fico esperando vocês na Sala da Bombe." },
	{ nome: "Turing", frase: "Enquanto eu espero, vocês devem achar a Válvula Mestra e trazer pra mim." },
    { nome: "Theo", frase: "E onde está a válvula?" },
	{ nome: "Turing", frase: "Vocês teram que procurá-la no segundo andar da Mansão" },
	{ nome: "Turing", frase: "Aqui é o centro de Bletchley Park, então deve ter vários operários." },
	{ nome: "Turing", frase: "Tentem passar longe deles e não demorem muito!" },
	{ nome: "Alan", frase: "OK!" }*/
];

if (instance_exists(obj_alan)) {
    obj_alan.travado = false;
}

if (instance_exists(obj_turing)) {
    obj_turing.iniciar_caminho7 = true;
}

obj_objetivos.define_objetivo("OBJETIVO - Siga o Turing");
obj_objetivos.define_etapas([]);