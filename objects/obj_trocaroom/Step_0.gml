if(instance_exists(obj_troca)&&instance_exists(obj_alan)){
if (place_meeting(obj_alan.x, obj_alan.y, obj_troca)) {
            estado = "entrando";
        }}
if (room != room_anterior) {

    estado = "saindo";
    room_anterior = room;
}
if(room==rm_mansao){
if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
        room_goto(rm_bletchley);
        
    }
}}
if(room==rm_quarto){
if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
        room_goto(rm_mansao);
        
    }
}}
if(room==rm_bletchley&&obj_alan.x>1600&&obj_alan.x<2200){
if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
        room_goto(rm_hut6);
        
    }
}}
if(room==rm_bletchley&&obj_alan.x<1600){
if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
        room_goto(rm_mansao);
        
    }
}}
if(room==rm_bletchley&&obj_alan.x>2500&&obj_alan.y>1300){
if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
		bletchleybaixo=true;
        room_goto(rm_bletchley2);
        
    }
}}
if(room==rm_bletchley&&obj_alan.x>2500&&obj_alan.y<=1300){
if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
		bletchleycima=true;
        room_goto(rm_bletchley2);
        
    }
}}
if(room==rm_bletchley2&&obj_alan.x<2500&&obj_alan.y<=1300){
if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
		bletchley2cima=true;
        room_goto(rm_bletchley);
        
    }
}}
if(room==rm_bletchley2&&obj_alan.x<2500&&obj_alan.y>1300){
if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
		bletchley2baixo=true;
        room_goto(rm_bletchley);
        
    }
}}
if (estado == "saindo") {
	
    alpha -= 0.02;
    if (alpha <= 0) {
        alpha = 0;
        estado = "nenhum";
    }
}

