depth = -40000;
texto = "";
alpha = 0;
fade_speed = 0.03;
margem_x = 30;
margem_y = 30;
etapas = [];

define_objetivo = function(_texto) {
    texto = _texto;
    alpha = 0;
    etapas = [];
};

limpa_objetivo = function() {
    texto = "";
    etapas = [];
};

define_etapas = function(_lista) {
    etapas = [];
    for (var i = 0; i < array_length(_lista); i++) {
        if (is_string(_lista[i])) {
            array_push(etapas, { texto: _lista[i], feita: false });
        } else {
            array_push(etapas, _lista[i]);
        }
    }
};

muda_etapa = function(_i, _texto) {
    if (_i < array_length(etapas)) etapas[_i].texto = _texto;
};

marca_etapa = function(_i, _feita = true) {
    if (_i < array_length(etapas)) etapas[_i].feita = _feita;
};