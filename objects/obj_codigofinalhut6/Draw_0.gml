if (visible) {
    draw_self();

    if (string_length(digitado_final) > 0) {
        draw_set_font(fnt_fonte);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_color(c_black);
        draw_set_alpha(image_alpha);
        draw_text_transformed(x, y, digitado_final, final_escala, final_escala, 0);
        draw_set_alpha(1);
        draw_set_color(c_white);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
    }
}