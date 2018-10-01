/// Shot at the player
shooting_speed = random_range(45, 100);

if (shot == false && instance_exists(obj_player))
{
	instance_create_depth(x,y,0,obj_enemy_bullet);
	shot = true;
	alarm[0] = shooting_speed;
}
if (blendtime > 0)
{
	blendtime--;
}
else
{
	blend = c_white;
}
if (path_position == 1)
{
	instance_destroy();
}

