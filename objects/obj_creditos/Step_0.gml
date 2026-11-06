if (creditos_y < creditos_altura_total + room_height - 500) {
    creditos_y += creditos_velocidade;
} else {
    game_end();
}