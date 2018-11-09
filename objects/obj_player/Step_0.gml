/// @making the player move

if (!keyboard_check(vk_shift))
{
	if (Input.up == true)
	{
		y -= player_speed;
	}
	if (Input.down == true)
	{
		y += player_speed;
	}
	if (Input.left == true)
	{
		x -= player_speed;	
	}
	if (Input.right == true)
	{
		x += player_speed;
	}
}

//Controls precision movement
if (keyboard_check(vk_shift))
{
	if (Input.up == true)
	{
		y -= player_speed / 2.273;
	}
	if (Input.down == true)
	{
		y += player_speed / 2.273;
	}
	if (Input.left == true)
	{
		x -= player_speed / 2.273;	
	}
	if (Input.right == true)
	{
		x += player_speed / 2.273;
	}
}
//Controls switching instruments
if (Input.control == true && instrument_cooldown == false)
{
	//show_debug_message(instrument);
	
	instrument += 1;
	if(instrument >= 3)
	{
		instrument = 0;
	}
	instrument_cooldown = true;
	alarm[1] = 40;
}

//Controls bombs
if (Input.bomb_key == true && instrument_cooldown == false)
{
	//show_debug_message(bomb_count);
	
	
	if(bomb_count >= 1 && bomb_cooldown == false)
	{
		//show_debug_message("IT WORKS")
		
		audio_play_sound(edm_explode,10,false);
		
		//Destroys all bullets
		with(obj_shot)
		{
			instance_destroy(obj_shot);
		}
		with(obj_enemy_bullet_parent)
		{
			instance_destroy(obj_enemy_bullet_parent);
		}
		//Damages all enemies
		if(instance_exists(obj_enemy_parent))
		{
			with (obj_enemy_parent)
			{
				hp -= 3		
				if(hp <= 0)
				{
					score += 10;	
					instance_create_depth(x,y,0,obj_particle_maker);
					instance_destroy();
				}
			}
		}
		//Damages all bosses
		if(instance_exists(obj_enemy_boss_parent))
		{
			with (obj_enemy_boss_parent)
			{
				hp -= 3		
				if(hp <= 0)
				{
					score += 100;	
					instance_create_depth(x,y,0,obj_particle_maker);
					instance_destroy();
				}
			}
		}
		
		//Subtracts bomb count
		bomb_count -= 1;
	}
	//Ensure bomb isn't accidently pressed twice
	bomb_cooldown = true;
	alarm[2] = 5;
}

//Controls shooting
if (Input.button_a == true && cooldown == false)
{
	var inst
	inst = instance_create_depth(x,y,1,obj_shot);
	with (inst)
		{
			instrument = other.instrument;
		}
	cooldown = true;
	alarm[0] = 10;
}



//clamping the player to stay on the screen

x = clamp(x, sprite_width/2 + room_width/4, room_width - sprite_width/2 - room_width/4);
y = clamp(y, 20, room_height - sprite_height/2);

// if you collide with any enemy, lose hp
if (hp <= 0)
{
	audio_play_sound(death_sound_effect,10,false);
	global.dead = true;
	show_debug_message(score);
	instance_destroy();
	instance_create_depth(room_width/2, room_height/2, -1, obj_highscoretextbox);
}


//creating the iframes

if (iframes > 0)
{
	iframes--;
}