if(room==rm_menu){
	window_set_cursor(cr_none);
}
if(room==rm_quarto){
	window_set_cursor(cr_default);
}
if(room==rm_creditos){
	window_set_cursor(cr_default);
}
if(room==rm_mansao){
	window_set_cursor(cr_default);
}
if(room!=rm_inicio&&room!=rm_menu&&room!=rm_creditos){
if(!instance_exists(obj_alan)){
	instance_create_layer(500, 500, "Instances", obj_alan);
}
if(!instance_exists(obj_inventario)){
	instance_create_layer(500, 500, "Instances", obj_inventario);}
}