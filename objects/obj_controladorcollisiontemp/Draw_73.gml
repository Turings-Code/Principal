if (aviso_ativo) {
    var _cam = view_camera[0];
    var _cx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
    var _cy = camera_get_view_y(_cam) + camera_get_view_height(_cam) - 120 - aviso_y;

    draw_set_font(fnt_fonte);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_set_alpha(aviso_alpha);
	if(room==rm_hut6){
    draw_text_transformed(_cx, _cy, "Pegue o Código Primeiro!", aviso_escala, aviso_escala, 0);}
	else if(room==rm_bletchley2&&!instance_exists(obj_cutscene6)){
	draw_text_transformed(_cx, _cy, "Conclua seu Objetivo Primeiro!", aviso_escala, aviso_escala, 0);}
	else if(room==rm_bletchley2&&instance_exists(obj_turingcutscene6)){
	draw_text_transformed(_cx, _cy, "Fale com o Turing Primeiro!", aviso_escala, aviso_escala, 0);}
	else if(room==rm_mansao){
	draw_text_transformed(_cx, _cy, "Porta Trancada!", aviso_escala, aviso_escala, 0);}
	else{
	draw_text_transformed(_cx, _cy, "Siga o Turing!", aviso_escala, aviso_escala, 0);}

    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}