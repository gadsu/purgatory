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

//instance_destroy();