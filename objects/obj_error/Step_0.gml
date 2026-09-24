var colide1 = false;
var colide2 = false;

if (instance_exists(obj_cursor)) {
    with (obj_cursor) {
        if (instance_exists(obj_area4)) colide1 = place_meeting(x, y, obj_area4);
        if (instance_exists(obj_area5)) colide2 = place_meeting(x, y, obj_area5);
    }
}

if (colide1) {
    sprite_index = spr_Errorhoverok;
} else if (colide2) {
    sprite_index = spr_ErrorhoverX;
} else {
    sprite_index = spr_Error;
}

