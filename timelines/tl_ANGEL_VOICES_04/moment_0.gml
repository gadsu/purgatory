///@description Start of fourth box

//USE IF SKIPPING TO THIS POINT, ELSE COMMENT OUT
//if!(variable_global_exists(skip))
//{
//	EQ1 = instance_create_layer(384, 110, "Instances", obj_equalizer);
//	EQ2 = instance_create_layer(512, 110, "Instances", obj_equalizer);
//	EQ3 = instance_create_layer(room_width/2, 110, "Instances", obj_equalizer);
//	EQ4 = instance_create_layer(768, 110, "Instances", obj_equalizer);
//	EQ5 = instance_create_layer(896, 110, "Instances", obj_equalizer);
//}

//EQ1.image_index.visible = false
//EQ2.image_index.visible = false
//EQ3.image_index.visible = false
//EQ4.image_index.visible = false
//EQ5.image_index.visible = false


by = obj_enemy_boss_songtest.y;
bx = obj_enemy_boss_songtest.x;
oebw = obj_enemy_bullet_wonder;
oebt = obj_enemy_bullet_turner;
oeba = obj_enemy_bullet_acel;



//Placeholder for the lights
L1 = instance_create_layer(400, 120, "Instances", obj_static_Sqaure);
L2 = instance_create_layer(500, 50, "Instances", obj_static_Sqaure);
L3 = instance_create_layer(780, 50, "Instances", obj_static_Sqaure);
L4 = instance_create_layer(880, 120, "Instances", obj_static_Sqaure);

global.phase = 4;

dir_01 = 225;

// END OF SKIP CODE

enemy_bullet(oebw, 0, bx, by + 40);
enemy_bullet(oebw, 90, bx, by + 40);
enemy_bullet(oebw, 180, bx, by + 40);
enemy_bullet(oebw, 270, bx, by + 40);


enemy_bullet_laser(bx + 75, by + 40, 8, 720, 10);