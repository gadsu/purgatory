/// @description Play the sound on exit of hit box

// if its touching the hitbox, flag it
if (place_meeting(x,y, obj_playergraze_hitbox))
{
	//show_debug_message("Touching player");
	hit_graze = true;
}
// if it touches the player model center
if (place_meeting(x, y, obj_player))
{
	hit_player = true;
}
//If the bullet hit the model, but not the player hitbox, play the grazing sound
if (!place_meeting(x,y, obj_playergraze_hitbox) && hit_graze == true && hit_player == false && made_sound = false)
{
	made_sound = true;
	audio_play_sound(bullet_graze_sound_effect, 1, false);
}

if (timer == 15)
{
	fade = true;
}
if(fade == true)
{
	image_alpha = image_alpha - 1/16;
	image_blend = c_olive;
	if (image_alpha == 0)
	{
		instance_destroy();
	}
}


timer++;
