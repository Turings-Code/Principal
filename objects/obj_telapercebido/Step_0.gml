if (floor(image_index) != floor(frame_anterior)) {
    audio_play_sound(snd_tic, 1, false);
}
frame_anterior = image_index;