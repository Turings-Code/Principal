if(image_alpha<1){image_alpha+=0.1;}

if(sprite_index==spr_ataqueboss1){if(x>1330){x-=9;}else if(x>1300){x-=7;}else{x-=5;}
} 
if (x <= 750)
{
    sprite_index = spr_Ataquebossfim;
    x--;
}

if (sprite_index == spr_Ataquebossfim)
{
    if (image_index >= sprite_get_number(sprite_index) - 1)
    {
        instance_destroy();
    }
}