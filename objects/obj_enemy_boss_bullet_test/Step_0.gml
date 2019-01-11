//Step code is in the parent file



if (timer mod 86 == 0 )
{
	

	//enemy_bullet_laser(x, y + 40, 5, 800, 0);
	//enemy_bullet_laser(x + 30, y + 40, 5, 800, 15);
	//enemy_bullet_laser(x - 30, y + 40, 5, 800, 345);
	//for(var i = 0; i < 60; i++)
	//{
	//	enemy_bullet(obj_enemy_sinesquare, 270 + (i * 6), x, room_height/2);
	//}
	
	enemy_bullet_vinyl(100, 800, 270, x - 60, y + 40, 4);
	
	
	
	safeguard = true;
}

//if (timer == 240)
//{
//	show_debug_message("explode");
//	global.bullet_explode = true;
//}

//if (y >= 75)
//{
//	vspeed = 0;
//}
//if (hp <= 0)
//{
//	score += 100;
//	global.bossdead = true;
//	show_debug_message(score);
//	instance_create_depth(room_width/2, room_height/2, -1, obj_highscoretextbox);
//	instance_destroy();
	
//}
//if(timer mod 30 == 1)
//{
//	i++
//}





////after a few seconds make the boss vulnerable again
//if (timer == 80)
//{
//	invul = false;
//}


//// shoot directional shots in a fan
//if (phase1 == true && invul == false)
//{
	
	
//	if(spawned == false && shots1 < 8)
//	{
//		enemy_bullet(obj_enemy_bullet_wonder, dir + 245, x - 70, y + 40);
//		spawned = true;
//		shots1++;
//		dir = dir + 5;
		
//		alarm[0] = 3;
	
//	}
//	//safe guard for if true
//	if(shots1 == 8 && safeguard == false)
//	{
//		spawned = false;
//		dir = 0;
//		safeguard = true;
//	}
	
//	if(spawned == false && shots1 == 8)
//	{
//		enemy_bullet(obj_enemy_bullet_wonder, 295 - dir, x + 70, y + 40);
//		spawned = true;
//		shots2++;
//		dir = dir + 5;
		
//		alarm[0] = 3;
		
//	}
	
	
	
//	//once the first phase is done make the reset happen
//	if (shots1 == 8 && shots2 == 8)
//	{
//		shots1 = 0;
//		shots2 = 0;
		
//		phase1 = false;
//		phase2 = true;
		
//		dir = 0;
		
		
//		//this alarm makes phase 1 happen again
//		alarm[1] = 300;
//	}
//}

////another safeguard


////this second phase will shoot homing shots at the player
//if(phase2 == true)
//{
//	//this makes it so the time between the phase 1 and 2 shots are not instant
//	if (safeguard == false)
//	{
//		spawned = true;
//		alarm[0] = 90;
//		safeguard = true;
//	}
	
//	if (spawned == false && shots1 < 10)
//	{
//		instance_create_depth(x + choose( -4, -2, 0, 2, 4), y+40, 0, obj_enemy_bullet);
//		spawned = true;
		
//		//recycling the shots1 variable for convience since its set to zero at this point
//		shots1++;
//		alarm[0] = 20;
//	}
//	if (shots1 == 10)
//	{
//		phase2 = false;
//		shots1 = 0;
//	}
	
//}
//if(hp <= 20 && path_started == false)
//{
	
//	path_start(path_bosspath, 2, path_action_continue, 0);
//	path_started = true;
//}
//if (blendtime > 0)
//{
//	blendtime--;
//}
//else
//{
//	blend = c_white;
//}
timer++