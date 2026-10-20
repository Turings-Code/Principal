// fecha apertando E (depois do delay, e só se não estiver já fechando)
if (delay > 0) {
    delay -= 1;
} else if (!fading_out && keyboard_check_pressed(ord("E"))) {
    fading_out = true;
}

// fade
if (fading_out) {
    image_alpha -= fade_speed;
    if (image_alpha <= 0) {
        instance_destroy();
    }
} else {
    image_alpha += fade_speed;
    if (image_alpha > 1) {
        image_alpha = 1;
    }
}