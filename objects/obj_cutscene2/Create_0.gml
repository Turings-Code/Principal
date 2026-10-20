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

delay_inicio = 120;

dialogo_index = -1;
dialogos = [
    { nome: "Alan", frase: "O que aconteceu? Onde estamos?" },
    { nome: "Theo", frase: "Será que estamos em um outro mundo? Estamos num subgênero de ficção japonesa?" }
];