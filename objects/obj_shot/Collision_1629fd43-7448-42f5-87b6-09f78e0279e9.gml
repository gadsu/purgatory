//when the bullet collides with the boss
//create a bullet impact
//add score
//destroy bullet
instance_create_depth(x,y - 5,0, obj_bullet_impact);

audio_play_sound(hit_effect,10,false);

if (instance_exists(obj_spawner) == true)
{
	score += 100 / int64(obj_spawner.i);
}

if (instance_exists(obj_player) == true)
{
	score += 20;
	health += 0.2
	//health += 0.1;
	show_debug_message(health);
}


//instance_destroy();