if (keyboard_check_pressed(ord("E")) && instance_exists(obj_letrae) && instance_exists(obj_alan) && instance_exists(obj_cutscene8)) {
    if (point_distance(x, y, obj_alan.x, obj_alan.y) < 250 && !obj_cutscene8.caixadetexto && !obj_cutscene8.cutscene) {
        
		global.theojogando=false;
		obj_alan.sprite_index=spr_alanparado;
		if(!instance_exists(obj_theo)){
			instance_create_layer(obj_alan.x, obj_alan.y, "Instances", obj_theo);}
			
			obj_alan.travado=true;
		obj_alan.x=obj_alancutscene.x; obj_alan.y=obj_alancutscene.y;
		
		if(instance_exists(obj_alancutscene)){
			with(obj_alancutscene){instance_destroy();}}
			obj_cutscene8.dialogo_mansao2 = true;
    }
}