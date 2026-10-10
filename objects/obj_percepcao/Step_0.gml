var distancia = distance_to_object(obj_alan);

if (estado == 0) {
	if (distancia <= 200) {
        image_speed = 3;
    }
    else if (distancia <= 370) {
        image_speed = 2;
    }
    else if (distancia <= 450) {
        image_speed = 1;
    }
    else {
        image_speed = -1;
    }
}
show_debug_message(image_speed)