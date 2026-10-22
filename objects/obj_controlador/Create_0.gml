jamorreu=false;
finalreal = 0;
depth=-200000;
quartopara2 = false;
global.folha_arrastada = noone;
global.theojogando=false;

global.font_pixel = font_add_sprite_ext(spr_fonte, "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!?.,", false, 7);
global.chave = false;
global.papel = false;
global.folhasenigma = false;
if (file_exists("save.ini")) {
    ini_open("save.ini");
    global.chave = ini_read_real("jogo", "chave", 0);
    global.papel = ini_read_real("jogo", "papel", 0);
    var _nome = ini_read_string("jogo", "room", "");
    ini_close();

    var _r = asset_get_index(_nome);
    if (_r != -1 && room_exists(_r) && _r != room) {
        room_goto(_r);
    }
}
