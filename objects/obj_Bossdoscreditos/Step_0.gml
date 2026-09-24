if (!framefinal && floor(image_index) >= sprite_get_number(sprite_index) - 1) {
    image_index = sprite_get_number(sprite_index) - 1;
    image_speed = 0;
    framefinal = true;
    alarm[0] = 60 * 0.1;	
}


