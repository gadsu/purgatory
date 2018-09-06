/// The behavior of going down and stopping





	//Once the scout reaches the center of room, slow it down for a few moments
	if (timer mod 5 == 0)
	{
		i++
	}
	// if the timer is in between 5 and 20, i is divisable by 3, and vspeed is bigger than 1
	// slow the object down
	if (i >= 3 && i < 13 && i mod 3 == 0 && vspeed > 1)
	{
		vspeed--;	
	}
	
	//when the timer reaches 17 fire at the player
	if (i = 10 && shot == false && instance_exists(obj_player))
	{
		enemy_bullet(obj_enemy_bullet_wonder, 270, x,y);
		shot = true
	}
	
	// after a moment moving slowly, speed up again and move away from the screen.
	if (i >= 13 && i mod 2 == 0 && vspeed < 3)
	{
		vspeed++;
	}
	
	
	
	
	//Then have it speed up to exit the bottom of the screen
	/*
	if(timer > 90 && i > 0)
	{
		vspeed = vspeed - i;
		i--;
	}
	*/
	

if (y > 632)
{
	instance_destroy();
}
if (blendtime > 0)
{
	blendtime--;
}
else
{
	blend = c_white;
}

timer++;
