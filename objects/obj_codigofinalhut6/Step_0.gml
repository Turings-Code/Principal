if (delay > 0) delay--;

if (aviso_ativo) {
    aviso_y += aviso_vel;
    aviso_alpha -= aviso_fade;
    if (aviso_alpha <= 0) aviso_ativo = false;
}

if (fading_out) {
    image_alpha -= fade_speed;
    if (image_alpha <= 0) {
        image_alpha = 0;
        visible = false;
        if (global.folha_arrastada == id) global.folha_arrastada = noone;
        if (!aviso_ativo) {
            instance_destroy();
            exit;
        }
    }
} else {
    image_alpha = min(image_alpha + fade_speed, 1);
}

if (visible) {
    var _sobre = position_meeting(mouse_x, mouse_y, id);

    if (!fading_out && !arrastando && _sobre && global.folha_arrastada == noone && mouse_check_button_pressed(mb_left)) {
        arrastando = true;
        global.folha_arrastada = id;
        off_x = x - mouse_x;
        off_y = y - mouse_y;
    }

    if (arrastando) {
        x = mouse_x + off_x;
        y = mouse_y + off_y;

        if (!mouse_check_button(mb_left)) {
            arrastando = false;
            global.folha_arrastada = noone;
        }
    }

    if (!fading_out && (_sobre || arrastando)) {
        obj_cursormouse.mao = true;
    }
}

if (!fading_out && !bloqueado_final && delay <= 0) {
    keyboard_string = string_digits(keyboard_string);

    if (string_length(keyboard_string) > 4) {
        keyboard_string = string_copy(keyboard_string, 1, 4);
    }

    digitado_final = keyboard_string;

    if (string_length(digitado_final) == 4) {
        if (digitado_final == senha_final) {
            bloqueado_final = true;
            audio_play_sound(snd_tecladoxerox, 1, false);

            aviso_texto = "Código Correto!";
			aviso_vel = aviso_vel_normal;
aviso_fade = aviso_fade_normal;
            aviso_ativo = true;
            aviso_y = 0;
            aviso_alpha = 0.8;

            fading_out = true;
			obj_objetivos.define_objetivo("OBJETIVO - Descubra a Frequência");
obj_objetivos.define_etapas([
    { texto: "- Faça o programa para identificar se é par ou ímpar", feita: true },
    { texto: "- Digite cada dígito no programa para formar o novo código", feita: true },
    { texto: "- Transcreva os grupos de 4 bits para decimal", feita: true},
    "- Coloque a frequência no rádio"
]);
            if (instance_exists(obj_folhabinarios)) obj_folhabinarios.fading_out = true;
            if (instance_exists(obj_codigo2hut6)) obj_codigo2hut6.fading_out = true;
			if (instance_exists(obj_folhabinarioaparece)){
				with(obj_folhabinarioaparece){instance_destroy();}}
            global.codigofinalhut6 = true;
        } else {
            audio_play_sound(snd_borracha, 1, false);

            aviso_texto = "Código Errado!";
            aviso_ativo = true;
            aviso_y = 0;
            aviso_alpha = 0.8;

            keyboard_string = "";
            digitado_final = "";
        }
    }
}