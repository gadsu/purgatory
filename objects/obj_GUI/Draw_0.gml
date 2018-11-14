/// Drawing the health of the player

if (instance_exists(obj_player))
{
	xt = 60;
	yt = 540;
	
	for(var i = 0; i <obj_player.hp; i++)
	{
		draw_sprite_ext(spr_health, 0, xt + (i * 100), yt, 1, 1, 0, c_white, 1);
	}
}

//drawing the bomb count (TESTING)
if(instance_exists(obj_player))
{
	
	xt = 1020;
	yt = 540;
	
	for(var i = 0; i < obj_player.bomb_count; i++)
	{
		draw_sprite_ext(spr_bombs, 0, xt + (i * 100), yt, 1, 1, 0, c_white, 1);
	}
}

//drawing the Text UI (TESTING)
if(instance_exists(obj_player))
{
	draw_set_color(c_white);
	draw_set_font(font_main);
	draw_set_halign(fa_center);
	//Left Side
	draw_text(160, 50, "Current Song:");
	draw_text(160, 100, "Virtual Self");
	draw_text(160, 140, "ANGEL VOICES");
	
	
	draw_text(160, 220, "Phase: 1");
	
	
	draw_text(160, 280, "Weapon Type:");
	if (instance_exists(obj_player))
	{
		draw_text(160, 320, string(obj_player.instrument));
	}
	else
	{
		draw_text(160, 320, "0");
	}
	
	
	//Right Side
	draw_text(1120, 50, "High Score");
	draw_text(1120, 85, string(highscore_value(1)));
	
	draw_text(1120, 150, "Current Score");
	draw_text(1120, 185, score);
	
	
	draw_text(1120, 425, "Bomb Type: Null");
	draw_text(1120, 475, "Bombs");
}



//drawing the timer [DEBUG]
if(instance_exists(obj_spawner))
{
	draw_set_color(c_red);
	draw_set_font(font_main);
	draw_text(room_width/2, 20, string(obj_spawner.i));
}

//drawing the direction for the boss [Debug]
//if(instance_exists(obj_enemy_boss_songtest))
//{
//	draw_set_color(c_blue);
//	draw_set_font(font_main);
//	draw_text(room_width/2, 75, string(obj_enemy_boss_songtest.dir));
//}