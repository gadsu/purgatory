/// When shot by an enemy, head to where the player is
direction = global.angle;
speed = global.bullet_speed;
made_sound = false;
hit_player = false;
hit_graze  = false;
if(instance_exists(obj_player))
{
	image_angle = point_direction(x,y, obj_player.x, obj_player.y) + 90;
}

outline = instance_create_layer(x, y, "Trails", obj_darkblue_trail);
with (outline)
	{
		speed = other.speed;
		direction = other.direction;
		image_angle = other.direction + 90;
	}