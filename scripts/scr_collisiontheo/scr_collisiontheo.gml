function scr_collisiontheo(move_x, move_y)
{
    var _bate = function(_x, _y)
    {
        return place_meeting(_x, _y, obj_collisionblock)
            || place_meeting(_x, _y, obj_alan);
    };

    var _steps_x = ceil(abs(move_x));
    var _dir_x = sign(move_x);

    repeat (_steps_x)
    {
        if (!_bate(x + _dir_x, y)) {
            x += _dir_x;
        } else {
            break;
        }
    }

    var _steps_y = ceil(abs(move_y));
    var _dir_y = sign(move_y);

    repeat (_steps_y)
    {
        if (!_bate(x, y + _dir_y)) {
            y += _dir_y;
        } else {
            break;
        }
    }
}