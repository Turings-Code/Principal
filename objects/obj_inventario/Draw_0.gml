if(instance_exists(obj_cutscene4)){if(obj_cutscene4.cutscene) exit;}
if(instance_exists(obj_cutscene5)){if(obj_cutscene5.cutscene) exit;}
if(instance_exists(obj_cutscene6)){if(obj_cutscene6.cutscene) exit;}
if(instance_exists(obj_cutscene7)){if(obj_cutscene7.cutscene) exit;}

if (ganhouitem) {
    ganhouitem = false;
    aviso_ativo = true;
    aviso_y = 0;
    aviso_alpha = 0.8;
}

if (aviso_ativo) {
    var _cam = view_camera[0];
    var _cx = camera_get_view_x(_cam) + camera_get_view_width(_cam) / 2;
    var _cy = camera_get_view_y(_cam) + camera_get_view_height(_cam) / 2 - aviso_y;

    draw_set_font(fnt_fonte);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_set_alpha(aviso_alpha);
    draw_text_transformed(_cx, _cy, "Novo Item: " + nome_item, aviso_escala, aviso_escala, 0);

    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);

    aviso_y += aviso_vel;
    aviso_alpha -= aviso_fade;
    if (aviso_alpha <= 0) aviso_ativo = false;
}
if(instance_exists(obj_cutscene2)){if(!obj_cutscene2.cutscene) exit;}
if(instance_exists(obj_cutscene3)){if(obj_cutscene3.cutscene) exit;}
var _esc = image_xscale;

cell_w = sprite_get_width(spr_iconemochila) * _esc;
cell_h = sprite_get_height(spr_iconemochila) * _esc;

if (aberto) {
    draw_sprite_ext(spr_iconemochilaab, 0, x, y, _esc, _esc, 0, c_white, image_alpha);
} else {
    draw_sprite_ext(spr_iconemochila, 0, x, y, _esc, _esc, 0, c_white, image_alpha);
}

if (aberto) {
    for (var i = 0; i < array_length(itens); i++) {
        var _col, _lin;
        if (i < 4) {
            _col = 0;
            _lin = i + 1;
        } else {
            _col = 1;
            _lin = i - 4;
        }
        draw_sprite_ext(itens[i], 0, x + _col * cell_w, y + _lin * cell_h, _esc, _esc, 0, c_white, 1);
    }
}

