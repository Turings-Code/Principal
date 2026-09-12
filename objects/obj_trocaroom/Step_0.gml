if (place_meeting(obj_alan.x, obj_alan.y, obj_troca)) {
            estado = "entrando";
        }
if (room != room_anterior) {

    estado = "saindo";
    room_anterior = room;
}
if(room=rm_turing){
if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
        room_goto(rm_bletchley);
        
    }
}}
if(room=rm_bletchley&&obj_alan.x>1600){
if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
        room_goto(rm_hut8);
        
    }
}}
if(room=rm_bletchley&&obj_alan.x<1600){
if (estado == "entrando") {
    alpha += 0.02;
    if (alpha >= 1) {
        alpha = 1;
        room_goto(rm_turing);
        
    }
}}
if (estado == "saindo") {
	show_debug_message("foi")
    alpha -= 0.02;
    if (alpha <= 0) {
        alpha = 0;
        estado = "nenhum";
    }
}

