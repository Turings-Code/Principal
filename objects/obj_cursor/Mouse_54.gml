if(place_meeting(x, y, obj_palavrajogar)){

		if(instance_exists(obj_descricao)){
	with(obj_descricao){instance_destroy();}
}
		instance_create_layer(x, y, "Instances", obj_descricao);


}

if(place_meeting(x, y, obj_palavracreditos)){

		if(instance_exists(obj_descricao)){
	with(obj_descricao){instance_destroy();}
}
		instance_create_layer(x, y-130, "Instances", obj_descricao);


}


	