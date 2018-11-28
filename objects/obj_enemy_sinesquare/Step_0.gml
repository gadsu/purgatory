/// @description Go straight then go left. stright then right


if(straight == true)
{
	direction = current_dir;
	speed = current_spd;
	if(timer == 43)
	{
		timer = 0;
		straight = false;
		curve = true;
		j++;
	}
}
if(curve == true)
{
	
	direction = current_dir + 90 + (dir_change * i);
	i++;
	speed = current_spd * j;
	
	if(timer == 43)
	{
		current_dir = direction - 90
		timer = 0;
		straight = true;
		curve = false;
		i = 0;
	}
	
}
if (j == 8)
{
	instance_destroy();
}
timer++;