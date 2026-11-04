function scr_salvar() {
    var _dados = {
        room: room_get_name(room),
        cutscene4criada: global.cutscene4criada,
        cutscene6criada: global.cutscene6criada
    };

    var _texto = json_stringify(_dados);
    var _buffer = buffer_create(string_byte_length(_texto) + 1, buffer_fixed, 1);
    buffer_write(_buffer, buffer_string, _texto);
    buffer_save(_buffer, "save.json");
    buffer_delete(_buffer);
}