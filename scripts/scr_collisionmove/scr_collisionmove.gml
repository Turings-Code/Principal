function scr_collision_move(move_x, move_y)
{
    // checa colisão com bloco OU com o turing
    var _bate = function(_x, _y)
    {
        return place_meeting(_x, _y, obj_collisionblock) || place_meeting(_x, _y, obj_turing);
    };

    // --- Move em sub-passos de 1 pixel no eixo X ---
    var steps_x = abs(move_x);
    var dir_x = sign(move_x);
    repeat (steps_x)
    {
        if (!_bate(x + dir_x, y))
        {
            x += dir_x;
        }
        else
        {
            break;
        }
    }
    // --- Move em sub-passos de 1 pixel no eixo Y ---
    var steps_y = abs(move_y);
    var dir_y = sign(move_y);
    repeat (steps_y)
    {
        if (!_bate(x, y + dir_y))
        {
            y += dir_y;
        }
        else
        {
            break;
        }
    }
    // --- Slide diagonal quando travado no eixo X ---
    if (move_x != 0 && _bate(x + dir_x, y))
    {
        var range = 16;
        for (var i = 1; i <= range; i++)
        {
            if (!_bate(x + dir_x, y - i))
            {
                if (!_bate(x, y - 1))
                    y -= 1;
                break;
            }
            if (!_bate(x + dir_x, y + i))
            {
                if (!_bate(x, y + 1))
                    y += 1;
                break;
            }
        }
    }
    // --- Slide diagonal quando travado no eixo Y ---
    if (move_y != 0 && _bate(x, y + dir_y))
    {
        var range = 16;
        for (var i = 1; i <= range; i++)
        {
            if (!_bate(x - i, y + dir_y))
            {
                if (!_bate(x - 1, y))
                    x -= 1;
                break;
            }
            if (!_bate(x + i, y + dir_y))
            {
                if (!_bate(x + 1, y))
                    x += 1;
                break;
            }
        }
    }
}