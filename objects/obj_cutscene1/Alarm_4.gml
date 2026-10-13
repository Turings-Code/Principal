fase = 3;
dialogos = dialogos_enigma;
dialogo_index = 0;
nome = dialogos[dialogo_index].nome;
frase = dialogos[dialogo_index].frase;
contador_texto = 0;
mostrar_texto = true;
texto_acelerado = false;
caixadetexto = true;
if (instance_exists(obj_alan)) {
    obj_alan.travado = true;
}