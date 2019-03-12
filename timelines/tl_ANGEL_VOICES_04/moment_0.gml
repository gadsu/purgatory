///@description Start of fourth box

//USE IF SKIPPING TO THIS POINT, ELSE COMMENT OUT
//if!(variable_global_exists(AngelVoices))
//{
//	EQ1 = instance_create_layer(384, 110, "Instances", obj_equalizer);
//	EQ2 = instance_create_layer(512, 110, "Instances", obj_equalizer);
//	EQ3 = instance_create_layer(room_width/2, 110, "Instances", obj_equalizer);
//	EQ4 = instance_create_layer(768, 110, "Instances", obj_equalizer);
//	EQ5 = instance_create_layer(896, 110, "Instances", obj_equalizer);
//}

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
oebl = obj_enemy_bullet;



//Placeholder for the lights
if (global.spawnedlights != true)
{
	L1 = instance_create_layer(400, 120, "UI_Layer", obj_Spotlight);
	L2 = instance_create_layer(500, 50, "UI_Layer", obj_Spotlight);
	L3 = instance_create_layer(780, 50, "UI_Layer", obj_Spotlight);
	L4 = instance_create_layer(880, 120, "UI_Layer", obj_Spotlight);
}
global.spawnedlights = true;
global.phase = 4;

dir_01 = 225;

// END OF SKIP CODE

enemy_bullet(oebw, 0, bx, by + 40);
enemy_bullet(oebw, 90, bx, by + 40);
enemy_bullet(oebw, 180, bx, by + 40);
enemy_bullet(oebw, 270, bx, by + 40);

//Warning has to be in box 3
enemy_bullet_laser(L3.x -4, L3.y, 7.5, 720, 10);