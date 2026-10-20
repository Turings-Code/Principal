depth = -100000;
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
    etapas = _lista;
};

muda_etapa = function(_i, _texto) {
    if (_i < array_length(etapas)) etapas[_i] = _texto;
};