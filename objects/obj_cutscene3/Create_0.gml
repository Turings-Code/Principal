if (!instance_exists(obj_objetivos)) {
    instance_create_depth(0, 0, -100000, obj_objetivos);
}
obj_objetivos.define_objetivo("OBJETIVO - Fale com o Turing");

instance_create_layer(1170, 1855, "Instances", obj_falahut8);

depth = -20000;
cam_zoom_vel = 0.03;
cam_vel = 0.08;
cutscene=false;
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
parte1=false;

dialogo_turing_valvula = false;
dialogo_alan_valvula = false;

shake_ativo = false;
shake_forca = 0;
shake_t = 1;
shake_ox = 0;
shake_oy = 0;

iniciar_dialogo = false;
dialogo_index = -1;
dialogos = [
    { nome: "Turing", frase: "Durante um conflito com os alemães, conseguimos 3 Enigmas e um Baú." },
	/*{ nome: "Turing", frase: "A Válvula Alfa está trancada nesse baú por 3 cadeados." },
	{ nome: "Turing", frase: "Cada Enigma pode ser usado para descriptografar o código pra cada cadeado." },
	{ nome: "Turing", frase: "Vocês precisam usar cada enigma e colecar os 3 códigos para abrir o baú." },
    { nome: "Alan", frase: "Acho que não me dou bem nisso. Não quero quebrar outro enigma." },
	{ nome: "Theo", frase: "Pode deixar comigo, Alan! Vou pegar a Válvula Alfa!" },
	{ nome: "Turing", frase: "Fique com estes papéis para saber como os Enigmas Funcionam." },
	{ nome: "Turing", frase: "Volte aqui quando pegar a válvula." },
	{ nome: "Theo", frase: "Entendido!" },*/
	
];

tempx=0;
tempy=0;
dialogo_final_feito = false;

if (!variable_global_exists("valvulaalfa")) {
    global.valvulaalfa = false;
}

dialogos_final = [
    { nome: "Turing", frase: "Eai garoto, Conseguiu pegar a Válvula Alfa?" },
  /*  { nome: "Theo", frase: "Consegui sim! Essa válvula aqui?" },
    { nome: "Turing", frase: "Caramba, Você realmente conseguiu!" },
	{ nome: "Turing", frase: "Talvez as crianças tenham ficado muito inteligentes no futuro." },
	{ nome: "Alan", frase: "Mandou bem em Theo!" },
	{ nome: "Turing", frase: "Bom, acho que se continuar assim vocês conseguem voltar pra casa ainda hoje." },
	{ nome: "Theo", frase: "E como pegamos a próxima válvula?" },
	{ nome: "Turing", frase: "Sigam me até a próxima Hut.?" },*/
];

troca_final_feita = false;
