depth = -y;

var _dist = point_distance(x, y, obj_alan.x, obj_alan.y);

if (!aberta && _dist <= 200) {
    aberta = true;
}
else if (aberta && _dist > 230) {
    aberta = false;
}

if (!aberta && image_index == 0) {
    if (obj_alan.x > x) {
        image_xscale = -7;
        x = 1568;
    } else {
        image_xscale = 7;
        x = 1500;
    }
}

if (aberta) {
    image_index += image_speed_real;
    if (image_index >= image_number - 1) {
        image_index = image_number - 1;
    }
} else {
    image_index -= image_speed_real;
    if (image_index <= 0) {
        image_index = 0;
    }
}