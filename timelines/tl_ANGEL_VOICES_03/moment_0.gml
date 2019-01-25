///@description Start of third Box, MB, Main Drum

//USE IF SKIPPING TO THIS POINT, ELSE COMMENT OUT
//if!(variable_global_exists(skip))
//{
//	EQ1 = instance_create_layer(384, 110, "Instances", obj_equalizer);
//	EQ2 = instance_create_layer(512, 110, "Instances", obj_equalizer);
//	EQ3 = instance_create_layer(room_width/2, 110, "Instances", obj_equalizer);
//	EQ4 = instance_create_layer(768, 110, "Instances", obj_equalizer);
//	EQ5 = instance_create_layer(896, 110, "Instances", obj_equalizer);
//}

//EQ1.image_index = 0;
//EQ2.image_index = 0;
//EQ3.image_index = 0;
//EQ4.image_index = 0;
//EQ5.image_index = 0;

//if(instance_exists(EQ1) == true)
//{
//	instance_deactivate_object(EQ1);
//}
//if(instance_exists(EQ2) == true)
//{
//	instance_deactivate_object(EQ2);
//}
//if(instance_exists(EQ3) == true)
//{
//	instance_deactivate_object(EQ3);
//}
//if(instance_exists(EQ4) == true)
//{
//	instance_deactivate_object(EQ4);
//}
//if(instance_exists(EQ5) == true)
//{
//	instance_deactivate_object(EQ5);
//}

//instance_deactivate_object(obj_equalizerhitbox)

by = obj_enemy_boss_songtest.y;
bx = obj_enemy_boss_songtest.x;
oebw = obj_enemy_bullet_wonder;
oebt = obj_enemy_bullet_turner;
oeba = obj_enemy_bullet_acel;
oebl = obj_enemy_bullet; // this one aims for the player
dir_02 = 0; // this is used for the passing in the aim for the homing bullet.

L1 = instance_create_layer(400, 120, "Instances", obj_Spotlight);
L2 = instance_create_layer(500, 50, "Instances", obj_Spotlight);
L3 = instance_create_layer(780, 50, "Instances", obj_Spotlight);
L4 = instance_create_layer(880, 120, "Instances", obj_Spotlight);
global.spawnedlights = true;


global.phase = 3;


// END OF SKIP CODE
// This code is for the main beat.
//enemy_bullet(oebw, 270, bx, by + 40);



enemy_bullet_vinyl(-120, 1075, 270, (bx - 193) - 40 , by + 100, 5);

// the bx - 49 is the drum
//enemy_bullet(oebw, 270, bx - 49, by + 40);

dir_01 = 200;
for (var i = 0; i < 10; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 10), bx - 60 + (i * 4), by + 40);
}
	

