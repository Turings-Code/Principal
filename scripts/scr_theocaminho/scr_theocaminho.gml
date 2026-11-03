function place_meeting_ext(_x, _y)
{
    return place_meeting(_x, _y, obj_collisionblock) || place_meeting(_x, _y, obj_collisionblocktemp);
}