
if(!instance_exists(obj_theo)){
	instance_create_layer(2020, 2628, "Instances", obj_theo);}
else{
	obj_theo.x = 2020; obj_theo.y=2628;}

if(!instance_exists(obj_turing)){
	instance_create_layer(2500, 2700, "Instances", obj_turing)
} else{
	obj_turing.x = 2500; obj_turing.y=2700;}
	
depth = -20000;
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
mapa_hut6_entregue = false;
cutscene = false;
iniciou_dialogo = false;
iniciar_dialogo = false;
dialogo_index = -1;
dialogos = [
    { nome: "Turing", frase: "Bom, esqueci de contar uma parte..." },
    { nome: "Alan", frase: "Qual é o problema, senhor Turing?" },
	{ nome: "Turing", frase: "Bom, eu não tenho acesso a essa Hut." },
	{ nome: "Turing", frase: "A Hut 6 se trata de decifrar códigos alemães, e por isso tem um acesso restrito." },
	{ nome: "Theo", frase: "Como assim? E como pegamos a próxima válvula?" },
	{ nome: "Turing", frase: "Acho que alguém terá que entrar e pegar sem ser visto." },
	{ nome: "Alan", frase: "Faz a boa Theo?" },
	{ nome: "Theo", frase: "Já fiz a minha parte com a outra válvula, Boa sorte Alan!" },
	{ nome: "Alan", frase: "Ah, acho que sobrou pra mim mesmo..." },
	{ nome: "Turing", frase: "Espera ai, seu nome também é Alan?" },
	{ nome: "Alan", frase: "É Alan sim, o que preciso fazer pra pegar a próxima válvula?" },
	{ nome: "Turing", frase: "A próxima válvula, a Válvula Beta, está dentro de um rádio alemão." },
	{ nome: "Turing", frase: "Sei que não descobriram uma forma de abrir aquilo ainda." },
	{ nome: "Turing", frase: "Junto com ele, tem um código, que você vai precisar achar também." },
	{ nome: "Alan", frase: "Como eu vou achar o código e o rádio?" },
	{ nome: "Turing", frase: "Tenho um mapa da Hut 6 pra te ajudar." },
	{ nome: "Turing", frase: "O código deve estar na Resgistration Room, entre diversas pilhas de papéis." },
	{ nome: "Turing", frase: "Leve o código ao rádio, que deve estar na Machine Room, do outro lado da hut." },
	{ nome: "Turing", frase: "Destranque a porta de cima para eu poder entrar se precisar." },
	{ nome: "Turing", frase: "Tente não ser visto, boa sorte garoto." },
	{ nome: "Theo", frase: "(Alan Turing então... Acho que já ouvi esse nome...)" },
	
];

turing_saindo = false;
turing_dest_x = 4170;
turing_dest_y = 1827;
turing_vel_saida = 6;