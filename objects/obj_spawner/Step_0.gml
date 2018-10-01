//keeps track of the seconds passed by
if(instance_exists(obj_player))
{

	if( timer mod 30 == 0)
		{
			i++;
		}
	
	
	//this spawns all the enemies
	if (spawned == false && i > 0 && i < 3)
	{
		x_spawn = irandom_range(350, 470)

		//unit spawner(type, enemy, path_set, x_cord, y_cord)
		unit_spawner("drop", obj_enemy_scout, 0, x_spawn, 0);
	

		alarm[0] = 10;
		spawned = true;
		// stop spawning the triangle after 3 seconds
	}

	if (spawned == false && i >= 7 && i < 10)
	{
		unit_spawner("path", obj_path_tester,path_Horizontal, 1000, 100);
		unit_spawner("path", obj_path_tester,path_Horizontal, 1000, 140);
		alarm[0] = 14;
		spawned = true;
	}
	if (spawned == false && i >= 20 && i < 24)
	{
		x_spawn = choose(450, 830);
		unit_spawner("drop", obj_enemy_swirl, 0, x_spawn, 0);
		spawned = true;
		alarm[0] = 40;
	}
	if ( spawned == false && i == 30)
	{
		x_spawn = room_width/2;
		unit_spawner("drop", obj_enemy_boss, 0, x_spawn, 0);
		spawned = true;
	
	}
	timer++;

}
