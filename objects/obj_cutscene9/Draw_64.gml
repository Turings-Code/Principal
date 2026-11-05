var _cam = view_camera[0];
var _gw = display_get_gui_width();
var _gh = display_get_gui_height();
var _f = _gw / camera_get_view_width(_cam);

if (escurecer_alpha > 0) {
    draw_set_color(c_black);
    draw_set_alpha(escurecer_alpha);
    draw_rectangle(-1, -1, _gw + 1, _gh + 1, false);
    draw_set_alpha(1);
    draw_set_color(c_white);
}

var _cx = _gw / 2;
var _cy = _gh / 2;

var _esc_caixa = 5.5 * _f;
var _caixa_y = 55 * _f;
var _esc_texto = 0.8;

var _nome = string_trim(nome);
var _spr_caixa = spr_caixadefalaalan;

if (_nome == "Turing" || _nome == "???") {
    _spr_caixa = spr_caixadefalaturing;
} else if (_nome == "Theo") {
    _spr_caixa = spr_caixadefalatheo;
} else if (_nome == "Mãe") {
    _spr_caixa = spr_caixadefalamae;
}

if (caixadetexto) {
    if (fade_caixa < 1) {
        fade_caixa += 0.1;
        if (fade_caixa > 1) {
            fade_caixa = 1;
        }
    }

    draw_sprite_ext(_spr_caixa, 0, _cx, _cy + _caixa_y, _esc_caixa, _esc_caixa, 0, c_white, fade_caixa);
} else {
    fade_caixa = 0;
}

if (frase != "Nada" && mostrar_texto) {

    if (mouse_check_button_pressed(mb_left)) {
        if (contador_texto >= string_length(frase)) {
            mostrar_texto = false;
            alarm[1] = 10;
        } else {
            texto_acelerado = true;
        }
    }

    var _velocidade = letras_por_frame;
    if (texto_acelerado) {
        _velocidade += vel;
    }

    if (pausa_timer > 0) {
        pausa_timer -= 1;
    } else {
        var _contador_anterior = contador_texto;
        contador_texto += _velocidade;
        if (contador_texto > string_length(frase)) {
            contador_texto = string_length(frase);
            texto_acelerado = false;
        }

        var _letra_revelada = string_char_at(frase, floor(contador_texto));
        if (floor(contador_texto) > floor(_contador_anterior)) {
            if (_letra_revelada == "." || _letra_revelada == "!" || _letra_revelada == "?") {
                pausa_timer = 30;
            }
        }
    }

    var _texto_visivel = string_copy(frase, 1, contador_texto);

    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    var _texto_x = _cx - 190 * _f;
    var _texto_y = _cy + _caixa_y + 85 * _f;
    var _texto_largura_max = 590 / _esc_texto;

    draw_set_color(make_color_rgb(137, 141, 155));
    draw_set_font(fnt_fonte);
    draw_text_ext_transformed(_texto_x, _texto_y, _texto_visivel, -1, _texto_largura_max, _esc_texto * _f, _esc_texto * _f, 0);

    draw_set_font(fnt_fonte2);
    draw_text_transformed(_texto_x + 40 * _f, _texto_y - 69 * _f, nome, _esc_texto * _f, _esc_texto * _f, 0);
}