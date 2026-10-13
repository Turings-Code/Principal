depth = -100000;
texto = "";
alpha = 0;
fade_speed = 0.03;
margem_x = 30;
margem_y = 30;

// define (ou troca) o objetivo atual; o texto aparece com fade in
define_objetivo = function(_texto) {
    texto = _texto;
    alpha = 0;
};

// some o objetivo atual (fade out)
limpa_objetivo = function() {
    texto = "";
};