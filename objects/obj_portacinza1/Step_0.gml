if (!instance_exists(obj_alan)) exit;
if (obj_cutscene5.fase_entrada_hut6 == 4 && !obj_cutscene5.caixadetexto && !obj_cutscene5.dialogo_radio) exit;

depth = -y;

var _dist = point_distance(x, y, obj_alan.x, obj_alan.y);

if (!aberta && _dist <= 200) {
    aberta = true;
}
else if (aberta && _dist > 230) {
    aberta = false;
}

if (!aberta && image_index == 0) {
    if (obj_alan.x > x) {
        image_xscale = -7;
        x = 1346;//+68
    } else {
        image_xscale = 7;
        x = 1278;
    }
}

var _frame_anterior = image_index;

if (aberta) {
    image_index += image_speed_real;

    if (image_index >= image_number - 1) {
        image_index = image_number - 1;
    }
} else {
    image_index -= image_speed_real;

    if (image_index <= 0) {
        image_index = 0;
    }
}

// Toca o som somente enquanto a porta estiver abrindo
if (aberta && image_index > _frame_anterior) {
    if (som_porta == -1 || !audio_is_playing(som_porta)) {
        som_porta = audio_play_sound(snd_porta, 1, false);
    }
}

// Para o som se a porta começar a fechar
if (!aberta && som_porta != -1) {
    audio_stop_sound(som_porta);
    som_porta = -1;
}