///@description Start of third Box, MB, Main Drum

//USE IF SKIPPING TO THIS POINT, ELSE COMMENT OUT
if!(variable_global_exists(skip))
{
	EQ1 = instance_create_layer(384, 110, "Instances", obj_equalizer);
	EQ2 = instance_create_layer(512, 110, "Instances", obj_equalizer);
	EQ3 = instance_create_layer(room_width/2, 110, "Instances", obj_equalizer);
	EQ4 = instance_create_layer(768, 110, "Instances", obj_equalizer);
	EQ5 = instance_create_layer(896, 110, "Instances", obj_equalizer);
}

EQ1.image_index = 0;
EQ2.image_index = 0;
EQ3.image_index = 0;
EQ4.image_index = 0;
EQ5.image_index = 0;


by = obj_enemy_boss_songtest.y;
bx = obj_enemy_boss_songtest.x;
oebw = obj_enemy_bullet_wonder;
oebt = obj_enemy_bullet_turner;
oeba = obj_enemy_bullet_acel;



dir_01 = 225;

// END OF SKIP CODE
enemy_bullet(oebw, 270, bx, by + 40);
enemy_bullet(oebw, 270, bx - 49, by + 40);