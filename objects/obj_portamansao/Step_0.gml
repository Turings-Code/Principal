if (!fade_ativo && image_index >= image_number - 1) {
    image_index = image_number - 1;
    image_speed = 0;
    fade_ativo = true;
	audio_play_sound(snd_porta, 1, false);
}

if (fade_ativo) {
    image_alpha -= 0.02;

    if (image_alpha <= 0) {
        instance_destroy();
    }
}