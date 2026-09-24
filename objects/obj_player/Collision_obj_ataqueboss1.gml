if (!escudo_ativo)
{
    vida -= 1;
    escudo_ativo = true;
    tempo_escudo = 0;
	piscar = true;
	piscar_timer = 0;
    if (vida == 2)
    {
        with (obj_life3)
        {
            sprite_index = spr_LifeF;
        }
    }

    if (vida == 1)
    {
        with (obj_life2)
        {
            sprite_index = spr_LifeF;
        }
    }

    if (vida == 0)
    {
        with (obj_life1)
        {
            sprite_index = spr_LifeF;
        }
    }

}