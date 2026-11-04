if(!instance_exists(obj_theo)){
	instance_create_layer(3750, 1230, "Instances", obj_theo);}
else{
	obj_theo.x = 3750; obj_theo.y=1230;}
	
	if(!instance_exists(obj_turingcutscene6)){
	var _t = instance_create_layer(2900, 1039, "Instances", obj_turingcutscene6);
_t.image_xscale = 7;
_t.image_yscale = 7;}
else{
	obj_theo.x = 3750; obj_theo.y=1230;}

instance_create_layer(4065, 1752, "Instances", obj_troca4);
if(!instance_exists(obj_turing)){
	instance_create_layer(2900, 1039, "Instances", obj_turing)
} else{
	obj_turing.x = 2900; obj_turing.y=1039;}
	obj_objetivos.define_objetivo("OBJETIVO - Vá até o Turing");
        obj_objetivos.define_etapas([]);
obj_alan.theosegue=true;

depth = -60000;
cam_zoom_vel = 0.03;
cam_vel = 0.08;
global.cutscene6criada=true;
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
dialogos = [
    { nome: "Alan", frase: "Fala de teste." }
];

dialogo1 = false;
dialogos1 = [
    { nome: "Alan", frase: "E agora onde achamos a última válvula?" },
    { nome: "Turing", frase: "A Válvula Mestra, esta em algum lugar dentro da Mansão de Bletchley Park" },
	{ nome: "Turing", frase: "Esta vai ser provavelmente a mais difícil de encontrar." },
	{ nome: "Theo", frase: "Mansão? Não é lá que a máquina que vai nos levar para o presente está?" },
	{ nome: "Turing", frase: "Exatamente. A mansão está repleta de operários, então isso deve ser bem difícil." },
	{ nome: "Turing", frase: "Vamos entrar lá, achar a ultima válvula e já consertar a Bombe." },
	{ nome: "Turing", frase: "Se tudo ocorrer bem, depois disso vocês já voltaram pra onde vieram." },
	{ nome: "Alan", frase: "Vamo lá, Theo! Só falta mais uma!" },
	{ nome: "Turing", frase: "Podem me seguir." }
];
dialogo1_ativo = false;