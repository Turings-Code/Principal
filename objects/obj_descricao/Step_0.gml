var colide1 = false;
var colide2 = false;
var colide3 = false;

if (instance_exists(obj_cursor)) {
    with (obj_cursor) {
        if (instance_exists(obj_area1)) colide1 = place_meeting(x, y, obj_area1);
        if (instance_exists(obj_area2)) colide2 = place_meeting(x, y, obj_area2);
        if (instance_exists(obj_area3)) colide3 = place_meeting(x, y, obj_area3);
    }
}

if (colide1) {
    sprite_index = spr_Descricaocopiar;
} else if (colide2) {
    sprite_index = spr_Descricaoabrir;
} else if (colide3) {
    sprite_index = spr_Descricaocopialink;
} else {
    sprite_index = spr_Descricao;
}