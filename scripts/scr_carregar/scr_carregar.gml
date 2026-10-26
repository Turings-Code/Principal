function scr_carregar() {
    if (!file_exists("save.json")) return false;

    var _buffer = buffer_load("save.json");
    var _texto = buffer_read(_buffer, buffer_string);
    buffer_delete(_buffer);

    var _dados = json_parse(_texto);

    if (variable_struct_exists(_dados, "chave")) global.chave = _dados.chave;
    if (variable_struct_exists(_dados, "papel")) global.papel = _dados.papel;
    if (variable_struct_exists(_dados, "folhasenigma")) global.folhasenigma = _dados.folhasenigma;
    if (variable_struct_exists(_dados, "valvulaalfa")) global.valvulaalfa = _dados.valvulaalfa;
    if (variable_struct_exists(_dados, "mapahut6")) global.mapahut6 = _dados.mapahut6;

    if (variable_struct_exists(_dados, "room")) {
        var _r = asset_get_index(_dados.room);
        if (_r != -1 && room_exists(_r) && _r != room) {
            room_goto(_r);
        }
    }

    return true;
}