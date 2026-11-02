image_alpha = 0;
fade_speed = 0.1;
fading_out = false;
image_xscale=5.6;
image_yscale=5.6;

area_instrucao = [108, 126, 425, 506];
texto_instrucao = "Para formar o novo número, rode o programa, digite cada número do código individualmente e clique Enter. Faça isso até obter outro código de 12 números";
texto_escala = 0.8;

desenha_texto_area = function(_txt, _x1, _y1, _x2, _y2, _escmax) {
    var _w = _x2 - _x1;
    var _h = _y2 - _y1;
    var _e = _escmax;

    while (_e > 0.15 && string_height_ext(_txt, -1, _w / _e) * _e > _h) {
        _e -= 0.05;
    }

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text_ext_transformed(_x1, _y1, _txt, -1, _w / _e, _e, _e, 0);
};