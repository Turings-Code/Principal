if(visible == true) {
	with (obj_Funcoescreditos) {
	    instance_destroy();
	}
	with (obj_titulocreditos) {
	    instance_destroy();
	}
	with (obj_Traco) {
	    instance_destroy();
	}
	with (obj_titulosair) {
	    instance_destroy();
	}
	instance_create_layer(679.5, 384, "instances", obj_palavraDepoiscreditos);
}