if(!instance_exists(obj_alan)){
	instance_create_layer(500, 500, "Instances", obj_alan);
}

cam_zoom_vel = 0.03;
cam_vel = 0.08;
global.valvulaalfa=true;
global.valvulabeta=true;
global.valvulamestra=true;
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
	{ nome: "Turing", frase: "Bom, foi uma grande jornada até aqui." },
	{ nome: "Turing", frase: "Espero que minha invenção possa ajudar as proximas gerações." },
	{ nome: "Turing", frase: "Vocês foram de grande ajuda pra mim, garotos." },
	{ nome: "Turing", frase: "Podem ter o favor de terminar minha máquina, é só encaixar as 3 válvulas." },
];
dialogo_final2 = false;
dialogo_atual_final2 = false;
dialogos_final2 = [
    { nome: "Turing", frase: "Colocaram todas válvulas?" },
    { nome: "Theo", frase: "Terminamos de colocar!" },
    { nome: "Turing", frase: "Minha máquina está pronta! Finalmente posso vê-la com todas peças!" },
    { nome: "Turing", frase: "Obrigado garotos, vocês foram de grande ajuda até aqui." },
    { nome: "Alan", frase: "Nós já podemos voltar ao presente?" },
    { nome: "Turing", frase: "Vou ligar a máquina e daqui alguns segundos vocês devem voltar." },
];

dialogo_final3 = false;
dialogo_atual_final3 = false;
dialogos_final3 = [
    { nome: "Turing", frase: "Por vezes, são as pessoas de quem ninguém imagina nada," },
    { nome: "Turing", frase: "que fazem as coisas que ninguém sequer imagina!" },
];
foisom=false;
turing_indo = false;
turing_destino_x = 2134;
turing_destino_y = 1147;
turing_vel = 5;
espera_final3 = 2 * game_get_speed(gamespeed_fps);
espera_final3_timer = -1;
espera_final2 = 180;
espera_final2_timer = -1;

escurecer = false;
escurecer_alpha = 0;
escurecer_vel = 0.01;