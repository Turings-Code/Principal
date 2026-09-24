
if(sprite_index==spr_palavrajogarhover){
if (image_index >= sprite_get_number(sprite_index) - 1) {
    acabou=true;
}	
}
if(mouseemcima&&acabou==false){
	sprite_index=spr_palavrajogarhover;
}
if(acabou){
	sprite_index=spr_palavrajogarhoverfinal;
}
if(!mouseemcima){
	sprite_index=spr_palavrajogar;}