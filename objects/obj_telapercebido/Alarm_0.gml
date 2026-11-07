with (obj_diagolopercebeu) {
    caixadetexto = false;
    mostrar_texto = false;
    frase = "Nada";
    ja_falou = false;
    tela_agendada = false;
    fade_caixa = 0;
    contador_texto = 0;
    texto_acelerado = false;
    pausa_timer = 0;
    ativo = false;
    numero_npc = 0;
}
if(room==rm_hut6){
	global.codigohut6=false;
	global.quizxerox = false;
	global.codigofinalhut6 = false;
	global.valvulabeta = false;
}
if(room==rm_hut8){
	global.folhasenigma=false;
	global.valvulaalfa=false;
}
if(room==rm_mansao){
	global.fragmento1=false;
	global.fragmento2=false;
	global.fragmento3=false;
	global.chavecinza=false;
	global.foifalaturing=false;
	global.valvulamestra=false;
	global.theojogando=false;
}
room_restart();