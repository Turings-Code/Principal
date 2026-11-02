atualizar = function() {
    var _quantidade = 0;

    if (global.fragmento1) _quantidade++;
    if (global.fragmento2) _quantidade++;
    if (global.fragmento3) _quantidade++;

    var _energia = !instance_exists(obj_caixadeenergiaaparece);

    obj_objetivos.define_objetivo("OBJETIVO - Abra a Sala da Bombe");

    obj_objetivos.define_etapas([
        {
            texto: "- Religue a Energia da Porta",
            feita: _energia
        },
        "- Encontre a Válvula Mestra",
        {
            texto: "- Encontre os Fragmentos do Código (" + string(_quantidade) + "/3)",
            feita: _quantidade == 3
        }
    ]);
};