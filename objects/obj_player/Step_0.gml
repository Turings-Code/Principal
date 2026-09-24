if (vida <= 0)
{
	sprite_index = (spr_playerMorrendo);
	time = time + delta_time / 1000000;
	if (time >= 1.2) {
		obj_controlador.jamorreu=true;
		instance_destroy();	
}
	exit;
}
if (keyboard_check(ord("D"))) {
    x += 5;
    sprite_index = spr_playerDireita;
}
else if (keyboard_check(ord("A"))) {
    x -= 5;
    sprite_index = spr_playerEsquerda;
}
else {
    sprite_index = spr_playerParado;
}
if (keyboard_check_pressed(vk_space) && place_meeting(x, y+1, obj_plataforma)) {
    vspeed = jump_force;
}
if (keyboard_check_pressed(ord("W")) && place_meeting(x, y+1, obj_plataforma)) {
    vspeed = jump_force;
}
if (place_meeting(x, y, obj_plataforma)) {
    y -= 1;
}

vspeed += grav;


if (place_meeting(x, y + vspeed, obj_plataforma)) {
    
    while (!place_meeting(x, y + sign(vspeed), obj_plataforma)) {
        y += sign(vspeed);
    }
    vspeed = 0;
} else {
    y += vspeed;
}
if(image_alpha!=1){
	image_alpha+=0.05;
}

if (escudo_ativo)
{
    tempo_escudo += 1;
    
    if (tempo_escudo >= 60) 
    {
        escudo_ativo = false;
        tempo_escudo = 0;
    }
}

if (piscar) {
    piscar_timer++;

    if (piscar_timer <= 30) {
        image_alpha = lerp(1, 0.3, piscar_timer / 30);
    }
    else {
        image_alpha = lerp(0.3, 1, (piscar_timer - 30) / 30);
    }

    if (piscar_timer >= 60) {
        image_alpha = 1;
        piscar_timer = 0;
        piscar = false;
    }
}
if (y >= 800) {
	obj_controlador.jamorreu = true;
}
