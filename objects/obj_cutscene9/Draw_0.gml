if (escurecer_alpha > 0) {
    var _cam0 = view_camera[0];
    draw_set_color(c_black);
    draw_set_alpha(escurecer_alpha);
    draw_rectangle(
        camera_get_view_x(_cam0) - 1,
        camera_get_view_y(_cam0) - 1,
        camera_get_view_x(_cam0) + camera_get_view_width(_cam0) + 1,
        camera_get_view_y(_cam0) + camera_get_view_height(_cam0) + 1,
        false
    );
    draw_set_alpha(1);
    draw_set_color(c_white);
}

var _cam = view_camera[0];
var _vx = camera_get_view_x(_cam);
var _vy = camera_get_view_y(_cam);
var _view_w = camera_get_view_width(_cam);
var _view_h = camera_get_view_height(_cam);

var _esc_caixa = 5.5;
var _caixa_y = 55;
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

    draw_sprite_ext(_spr_caixa, 0, _vx + _view_w / 2, _vy + _view_h / 2 + _caixa_y, _esc_caixa, _esc_caixa, 0, c_white, fade_caixa);
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

    var _texto_x = _vx + (_view_w / 2) - 190;
    var _texto_y = _vy + (_view_h / 2) + _caixa_y + 85;
    var _texto_largura_max = 590 / _esc_texto;

    draw_set_color(make_color_rgb(137, 141, 155));
    draw_set_font(fnt_fonte);
    draw_text_ext_transformed(_texto_x, _texto_y, _texto_visivel, -1, _texto_largura_max, _esc_texto, _esc_texto, 0);

    draw_set_font(fnt_fonte2);
    draw_text_transformed(_texto_x + 40, _texto_y - 69, nome, _esc_texto, _esc_texto, 0);
}