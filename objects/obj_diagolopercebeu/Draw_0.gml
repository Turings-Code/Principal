if (!ativo) exit;

var _cam = view_camera[0];
var _cx = camera_get_view_x(_cam);
var _cy = camera_get_view_y(_cam);
var _view_w = camera_get_view_width(_cam);
var _view_h = camera_get_view_height(_cam);

if (caixadetexto) {
    if (fade_caixa < 1) {
        fade_caixa += 0.1;
        if (fade_caixa > 1) {
            fade_caixa = 1;
        }
    }

    var _spr_caixa = spr_caixadefala;
if (numero_npc == 1) _spr_caixa = spr_caixadefalaoperario1;
if (numero_npc == 2) _spr_caixa = spr_caixadefalaoperario2;
if (numero_npc == 3) _spr_caixa = spr_caixadefalaoperario3;
if (numero_npc == 4) _spr_caixa = spr_caixadefalaoperario4;
draw_sprite_ext(_spr_caixa, 0, _cx + _view_w / 2, _cy + _view_h / 2 + desce, 7, 7, 0, c_white, fade_caixa);
} else {
    fade_caixa = 0;
}

if (frase != "Nada" && mostrar_texto) {
    var _frase_percebido = (frase == "Ei garoto, tá fazendo oque aqui?");

    if (!_frase_percebido && mouse_check_button_pressed(mb_left)) {
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

    if (_frase_percebido && !tela_agendada && contador_texto >= string_length(frase)) {
    tela_agendada = true;
    alarm[2] = 60 * 3;
}
    var _texto_visivel = string_copy(frase, 1, contador_texto);

    draw_set_font(fnt_fonte);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    var _texto_x = _cx + (_view_w / 2) - 230;
var _texto_y = _cy + (_view_h / 2) + 115 + desce;
var _texto_largura_max = 1160 - (_texto_x - _cx);

    draw_set_color(make_color_rgb(137, 141, 155));
    draw_text_ext(_texto_x, _texto_y, _texto_visivel, -1, _texto_largura_max);

    draw_set_font(fnt_fonte2);
    draw_text(_texto_x + 40, _texto_y - 95, nome);
}