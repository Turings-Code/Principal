if (fading_out) {
    image_alpha -= fade_speed;
    if (image_alpha <= 0) instance_destroy();
} else {
    image_alpha = min(image_alpha + fade_speed, 1);
}