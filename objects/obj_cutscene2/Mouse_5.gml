if (caixadetexto) {

    if (audio_is_playing(snd_textblip)) {
        audio_stop_sound(snd_textblip);
    }

   
    caixadetexto = false;
    mostrar_texto = false;
    texto_acelerado = false;
    frase = "Nada";
    nome = "Nada";
    contador_texto = 0;
    delay_inicio = 0;
    turing_sobe = false;

    
    

}