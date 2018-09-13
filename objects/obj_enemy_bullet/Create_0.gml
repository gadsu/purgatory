/// When shot by an enemy, head to where the player is
if (instance_exists(obj_player))
{
	move_towards_point(obj_player.x,obj_player.y, 3);
}
else
{
	instance_destroy();
}
made_sound = false;
hit_player = false;
hit_graze  = false;
