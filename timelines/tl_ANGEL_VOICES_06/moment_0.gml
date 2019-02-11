///@description Start of fifth box

show_debug_message("TIME SHOULD BE 2:32.862")
show_debug_message(audio_sound_get_track_position(global.AngelVoices));

	//EQ1 = instance_create_layer(384, 110, "Instances", obj_equalizer);
	//EQ2 = instance_create_layer(512, 110, "Instances", obj_equalizer);
	//EQ3 = instance_create_layer(room_width/2, 110, "Instances", obj_equalizer);
	//EQ4 = instance_create_layer(768, 110, "Instances", obj_equalizer);
	//EQ5 = instance_create_layer(896, 110, "Instances", obj_equalizer);


//	EQ1.image_index = 0;
//	EQ2.image_index = 0;
//	EQ3.image_index = 0;
//	EQ4.image_index = 0;
//	EQ5.image_index = 0;

	//if(instance_exists(EQ1) == true)
	//{
		instance_activate_object(EQ1);
	//}
	//if(instance_exists(EQ2) == true)
	//{
		instance_activate_object(EQ2);
	//}
	//if(instance_exists(EQ3) == true)
	//{
		instance_activate_object(EQ3);
	//}
	//if(instance_exists(EQ4) == true)
	//{
		instance_activate_object(EQ4);
	//}
	//if(instance_exists(EQ5) == true)
	//{
		instance_activate_object(EQ5);
	//}

	instance_activate_object(obj_equalizerhitbox)

//EQ1.image_index = 10;
//EQ2.image_index = 0;
//EQ3.image_index = 0;
//EQ4.image_index = 0;
//EQ5.image_index = 10;

if (global.spawnedlights != true)
{
	L1 = instance_create_layer(400, 120, "Instances", obj_Spotlight);
	L2 = instance_create_layer(500, 50, "Instances", obj_Spotlight);
	L3 = instance_create_layer(780, 50, "Instances", obj_Spotlight);
	L4 = instance_create_layer(880, 120, "Instances", obj_Spotlight);
}
global.spawnedlights = true;

global.phase = 6;

by = obj_enemy_boss_songtest.y;
bx = obj_enemy_boss_songtest.x;
oebw = obj_enemy_bullet_wonder;
oebt = obj_enemy_bullet_turner;
oeba = obj_enemy_bullet_acel;
oebl = obj_enemy_bullet; // this one aims for the player
dir_02 = 0; // this is used for the passing in the aim for the homing bullet.





// END OF SKIP CODE

