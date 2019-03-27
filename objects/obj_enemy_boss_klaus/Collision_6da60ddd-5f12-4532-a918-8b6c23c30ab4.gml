/// @description Get Hit

/// After invulnerablity ends, then start taking damage from shots

/// Lose hp when collding with a player made bullet
//Checks to ensure the bullet exists 
//Checks if enemy is dead
//Destroys bullet
if(instance_exists(obj_shot.id))
{
	hp = hp - obj_shot.damage;
}
//show_debug_message(hp);

//if(hp <= 0)
//{
//	score += 100;
//	instance_create_depth(x,y,0,obj_particle_maker);
//	show_debug_message(score);
//	instance_create_depth(room_width/2, room_height/2, -1, obj_highscoretextbox);
//	instance_destroy();
//}

blend = c_red;
blendtime = 5;
	
instance_create_depth(obj_shot.x,obj_shot.y+5,0, obj_bullet_impact);

audio_play_sound(hit_effect,10,false);

if (instance_exists(obj_player) == true)
{
	score += 20;
	health += 0.2
	//health += 0.1;
	show_debug_message(health);
}

	instance_destroy(obj_shot.id);
