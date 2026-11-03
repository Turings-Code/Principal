if (abrir) {
    if (!fade) {
        image_speed = 3;
        if (image_index >= image_number - 1) {
            image_speed = 0;
            image_index = image_number - 1;
            fade = true;
        }
    }
}

if (fade) {
    image_alpha -= 0.02;
    if (image_alpha <= 0) instance_destroy();
}