
if(sprite_index==spr_pavracreditoshover){
if (image_index >= sprite_get_number(sprite_index) - 1) {
    acabou=true;
}	
}
if(mouseemcima&&acabou==false){
	sprite_index=spr_pavracreditoshover;
}
if(acabou){
	sprite_index=spr_palavracreditoshoverfinal;
}
if(!mouseemcima){
	sprite_index=spr_palavracreditos;}