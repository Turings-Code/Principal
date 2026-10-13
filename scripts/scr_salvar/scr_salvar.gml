function scr_salvar() {
    ini_open("save.ini");
    ini_write_string("jogo", "room", room_get_name(room));
    ini_write_real("jogo", "chave", global.chave);
    ini_write_real("jogo", "papel", global.papel);
    ini_close();
}