if(image_index=4){
	image_speed=0;
	image_index=4;}
if (obj_cutscene5.fase_saida_turing == 2 && !obj_cutscene5.caixadetexto) {
    if (image_index > 0) {
        image_speed = -3;
    } else {
        image_speed = 0;
        image_index = 0;
    }
}