
if(sprite_index==spr_titulosairhover){
if (image_index >= sprite_get_number(sprite_index) - 1) {
    acabou=true;
}	
}
if(mouseemcima&&acabou==false){
	sprite_index=spr_titulosairhover;
}
if(acabou){
	sprite_index=spr_titulosairhoverfinal;
}
if(!mouseemcima){
	sprite_index=spr_titulosair;}
time = time + delta_time / 1000000;
if (time >= 3) {
	visible = true;
}