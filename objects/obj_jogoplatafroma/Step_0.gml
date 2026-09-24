if (obj_controlador.jamorreu == false) {
	contador += 1;

if (contador >= vel) 
{
    contador = 0;
    if(vel>=70){vel-=5;}

    var chance = irandom_range(0, 1);
    
    if (chance == 0) 
    {

        var y_aleatorio = irandom_range(550, 700);
        instance_create_layer(1360, y_aleatorio, "Instances", obj_ataqueboss1);
    }
    else
    {

        var x_aleatorio = irandom_range(800, 1340);
        instance_create_layer(x_aleatorio, 300, "Instances", obj_ataqueboss2);
    }
}

if(vel<=90){contador2 += 1;

if (contador2 >= 140)
{
    contador2 = 0;


    var chance2 = irandom_range(0, 1);
    
    if (chance2 == 0)
    {

        var y_aleatorio2 = irandom_range(550, 700);
        instance_create_layer(1360, y_aleatorio2, "Instances", obj_ataqueboss1);
    }
    else 
    {

        var x_aleatorio2 = irandom_range(800, 1340);
        instance_create_layer(x_aleatorio2, 300, "Instances", obj_ataqueboss2);
    }
}}
}

if (obj_controlador.jamorreu == true && obj_controlador.finalreal >= 1) {
	time = time + delta_time / 1000000;
	if (time >= 0.2) {
		if (instance_exists(obj_ataqueboss1)) {
			with (obj_ataqueboss1) {
				instance_destroy(); }}
		if (instance_exists(obj_ataqueboss2)) {
			with (obj_ataqueboss2) {
				instance_destroy(); }}
		if (instance_exists(obj_life3)) {
			with (obj_life3) {
				instance_destroy();}}
		if (instance_exists(obj_life2)) {
			with (obj_life2) {
				instance_destroy();}}
		if (instance_exists(obj_life1)) {
			with (obj_life1) {
				instance_destroy();}}
		if (instance_exists(obj_plataforma)) {
			with (obj_plataforma) {
				if (image_xscale < 42) {
					image_xscale += 1;
					x -= 30; }
				if (!instance_exists(obj_saidadoscreditos)) {
					instance_create_layer(82, 648, "instances", obj_saidadoscreditos);}}}
		if (instance_exists(obj_Bossdoscreditosmovimentacao)) {
			with (obj_Bossdoscreditosmovimentacao) {
				instance_destroy(); }}
		if (!instance_exists(Obj_collision)) {
			instance_create_layer(1364, 410, "instances", Obj_collision);}
		if (!instance_exists(obj_telafinalobg)) {
			instance_create_layer(470, 240, "instances", obj_telafinalobg);}
			
	}}
else if (obj_controlador.jamorreu == true) {
	time = time + delta_time / 1000000;
	if (time >= 0.2) {
	 	if (instance_exists(obj_Textaofinal)) {
			with (obj_Textaofinal) {
				instance_destroy(); } }
		if (instance_exists(obj_plataforma)) {
			with (obj_plataforma) {
				instance_destroy(); } }
		if (instance_exists(obj_ataqueboss1)) {
			with (obj_ataqueboss1) {
				instance_destroy(); }}
		if (instance_exists(obj_ataqueboss2)) {
			with (obj_ataqueboss2) {
				instance_destroy(); }}
		if (instance_exists(obj_life3)) {
			with (obj_life3) {
				instance_destroy();}}
		if (instance_exists(obj_life2)) {
			with (obj_life2) {
				instance_destroy();}}
		if (instance_exists(obj_life1)) {
			with (obj_life1) {
				instance_destroy();}}
		if (instance_exists(obj_Bossdoscreditosmovimentacao)) {
			with (obj_Bossdoscreditosmovimentacao) {
				instance_destroy();}}
		instance_create_layer(679.5, 384, "instances", obj_telagameover);
}}
