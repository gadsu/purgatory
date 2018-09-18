/// Drawing the health of the player

if (instance_exists(obj_player))
{
	xt = 20;
	yt = 575;
	
	for(var i = 0; i <obj_player.hp; i++)
	{
		draw_sprite_ext(spr_health, 0, xt, yt - (i * 20), 1, 1, 0, c_white, 1);
	}
}

//drawing the score (TESTING)
if(instance_exists(obj_spawner))
{
	draw_set_color(c_white);
	draw_set_font(font_main);
	draw_text(room_width/2 +40, 20, string(score));
}

//drawing the bomb count (TESTING)
if(instance_exists(obj_spawner) && instance_exists(obj_player))
{
	draw_set_color(c_white);
	draw_set_font(font_main);
	draw_text(room_width/2 - 40, 20, string(obj_player.bomb_count));
}

//drawing the timer [DEBUG]
if(instance_exists(obj_spawner))
{
	draw_set_color(c_red);
	draw_set_font(font_main);
	draw_text(room_width/2, 20, string(obj_spawner.i));
}

//drawing the direction for the boss [Debug]
if(instance_exists(obj_enemy_boss))
{
	draw_set_color(c_blue);
	draw_set_font(font_main);
	draw_text(room_width/2, 75, string(obj_enemy_boss.dir));
}