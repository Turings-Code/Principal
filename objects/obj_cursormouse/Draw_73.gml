if (room == rm_menu) semcursor = true;

if (semcursor) {
    window_set_cursor(cr_none);
} else {
    window_set_cursor(mao ? cr_handpoint : cr_default);
}

mao = false;
semcursor = false;