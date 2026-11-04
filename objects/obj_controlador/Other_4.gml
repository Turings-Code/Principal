if(room==rm_menu){
	window_set_cursor(cr_none);
	if(instance_exists(obj_alan)){
		with(obj_alan){instance_destroy();}}
		obj_objetivos.define_objetivo(" ");
obj_objetivos.define_etapas([]);
}
if(room==rm_quarto){
	window_set_cursor(cr_default);
}
if(room==rm_creditos){
	window_set_cursor(cr_default);
}
if(room==rm_creditos2){
	obj_objetivos.define_objetivo(" ");
obj_objetivos.define_etapas([]);
}
if(room==rm_mansao){
	window_set_cursor(cr_default);
}
if(room!=rm_inicio&&room!=rm_menu&&room!=rm_creditos&&room!=rm_quarto&&room!=rm_creditos2&&room!=rm_transicao1){
if(!instance_exists(obj_alan)){
	instance_create_layer(500, 500, "Instances", obj_alan);
}
if(!instance_exists(obj_inventario)){
	instance_create_layer(500, 500, "Instances", obj_inventario);}
if(!instance_exists(obj_botaopause)){
	instance_create_layer(500, 500, "Instances", obj_botaopause);}
}


if(instance_exists(obj_cutscene4)){cutscene4foi=true;}

if(room==rm_hut8&&cutscene4foi&&global.valvulaalfa){
	if(instance_exists(obj_turing)){with(obj_turing){instance_destroy();}}
	var _bloco = collision_point(1068, 1798, obj_collisionblock, false, true);

    if (_bloco != noone) {
        with (_bloco) instance_destroy();
    }
	if(instance_exists(obj_cofreaparece)){with(obj_cofreaparece){instance_destroy();}}
	if(instance_exists(obj_turinghut8)){with(obj_turinghut8){instance_destroy();}}
	if(instance_exists(obj_falahut8)){with(obj_falahut8){instance_destroy();}}
	if(!instance_exists(obj_troca)){var _troca = instance_create_layer(716, 2230, "Instances", obj_troca);
            _troca.image_xscale = 23;
            _troca.image_yscale = 9;}
	obj_controladorenigmas.enigma1=true;
	obj_controladorenigmas.enigma2=true;
	obj_controladorenigmas.enigma3=true;
}
if(room==rm_hut8&&(global.cutscene4criada||global.cutscene6criada)){
	if(instance_exists(obj_turing)){with(obj_turing){instance_destroy();}}
	var _bloco = collision_point(1068, 1798, obj_collisionblock, false, true);

    if (_bloco != noone) {
        with (_bloco) instance_destroy();
    }
	if(instance_exists(obj_cofreaparece)){with(obj_cofreaparece){instance_destroy();}}
	if(instance_exists(obj_turinghut8)){with(obj_turinghut8){instance_destroy();}}
	if(instance_exists(obj_falahut8)){with(obj_falahut8){instance_destroy();}}
	if(!instance_exists(obj_troca)){var _troca = instance_create_layer(716, 2230, "Instances", obj_troca);
            _troca.image_xscale = 23;
            _troca.image_yscale = 9;}
	obj_controladorenigmas.enigma1=true;
	obj_controladorenigmas.enigma2=true;
	obj_controladorenigmas.enigma3=true;
}

if(room==rm_hut6&&cutscene6foi&&global.valvulabeta){
	show_debug_message("room start controlador");
	if(instance_exists(obj_cutscene5)){
		with(obj_cutscene5){instance_destroy();}}
	if(instance_exists(obj_radioaparece)){
		with(obj_radioaparece){instance_destroy();}}
		if(!instance_exists(obj_troca2)){
			var _t = instance_create_layer(802, 512, "Instances", obj_troca2);
_t.image_xscale = 11;
_t.image_yscale = 8;}

			var _t = instance_create_layer(2328, 2121, "Instances", obj_troca3);
_t.image_xscale = 15;
_t.image_yscale = 9;
}
if(room==rm_bletchley){
	obj_alan.theosegue=true;}