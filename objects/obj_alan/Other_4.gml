
var _spawn = obj_trocaroom.usar_spawn;
show_debug_message("room=" + room_get_name(room) + " spawn=" + string(_spawn) + " x=" + string(x) + " y=" + string(y));
if (_spawn) {
    x = obj_trocaroom.spawn_x;
    y = obj_trocaroom.spawn_y;
    obj_trocaroom.usar_spawn = false;
}

if (room == rm_mansao) {
    if (!_spawn) { x = 1360; y = 5434; }
    image_xscale = 8;
    image_yscale = 8;
}
if (room == rm_salafinal) {
    if (!_spawn) { x = 1687; y =2703; }
    image_xscale = 8;
    image_yscale = 8;
}
if (room == rm_transicao1) {
    if (!_spawn) { x = 522; y =390; }
    image_xscale = 8;
    image_yscale = 8;
}
if (room == rm_transicao2) {
    if (!_spawn) { x = 522; y =390; }
    image_xscale = 8;
    image_yscale = 8;
}
if (room == rm_quarto2) {
    if (!_spawn) { x = 1955; y =642; }
    image_xscale = 8;
    image_yscale = 8;
}
if (room == rm_bletchley) {
    if (!_spawn) { x = 1320; y = 760; }
    image_xscale = 7;
    image_yscale = 7;
}
if (room == rm_quarto) {
    image_xscale = 8;
    image_yscale = 8;
}

if (room == rm_hut8) {
    x = 888;
    y = 2124;
	if(!global.valvulaalfa){
    theosegue = false;} else{
		theosegue=true;}
    image_xscale = 8;
    image_yscale = 8;
}

if (room == rm_hut6) {
    x = 2450;
    y = 1900;
    image_xscale = 8;
    image_yscale =8;
}

if (room == rm_bletchley2) {
    image_xscale = 7;
    image_yscale = 7;
    if (obj_trocaroom.quartopara2) {
        x = 1170;
        y = 400;
        travado = true;
        obj_trocaroom.quartopara2 = false;
        direcao = "baixo";
        sprite_index = spr_alanparado;
        image_index = 0;
    }
}

if (room != rm_quarto && room != rm_mansao && !(room == rm_bletchley2 && travado)) {
    travado = false;
}

if(room==rm_bletchley2&&global.valvulaalfa){
	if(!instance_exists(obj_cutscene4)){
	instance_create_layer(10, 10, "Instances", obj_cutscene4);}}
	
if(room==rm_bletchley2&&global.valvulabeta){
	if(!instance_exists(obj_cutscene6)){
	instance_create_layer(10, 10, "Instances", obj_cutscene6);}
	if(instance_exists(obj_cutscene4)){
	with(obj_cutscene4){instance_destroy();}}
	if(instance_exists(obj_cutscene2)){
	with(obj_cutscene2){instance_destroy();}}
	}
	
show_debug_message("final room=" + room_get_name(room) + " x=" + string(x) + " y=" + string(y));