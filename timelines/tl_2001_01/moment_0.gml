///@descr Timeline Speed Changes, Violin Things


timeline_speed = 2.5;

by = obj_enemy_boss_klaus.y;
bx = obj_enemy_boss_klaus.x;
oebw = obj_enemy_bullet_wonder;
oebt = obj_enemy_bullet_turner;
oeba = obj_enemy_bullet_acel;
oebp = obj_enemy_bullet_path;
oebl = obj_enemy_bullet_large;





if (classicalskip == true)
{
	V01 = instance_create_layer(370, 170, "Instances", obj_violin);
	V02 = instance_create_layer(420, 170, "Instances", obj_violin);
	V03 = instance_create_layer(470, 170, "Instances", obj_violin);
	V04 = instance_create_layer(810, 170, "Instances", obj_violin);
	V05 = instance_create_layer(860, 170, "Instances", obj_violin);
	V06 = instance_create_layer(910, 170, "Instances", obj_violin);

	C_01 = instance_create_layer(365, 285, "Instances", obj_cello);
	C_02 = instance_create_layer(915, 285, "Instances", obj_cello);
	C_02.image_xscale = -1;
	C_03 = instance_create_layer(365, 390, "Instances", obj_cello);
	C_04 = instance_create_layer(915, 390, "Instances", obj_cello);
	C_04.image_xscale = -1;
	C_05 = instance_create_layer(365, 495, "Instances", obj_cello);
	C_06 = instance_create_layer(915, 495, "Instances", obj_cello);
	C_06.image_xscale = -1;
	C_07 = instance_create_layer(365, 600, "Instances", obj_cello);
	C_08 = instance_create_layer(915, 600, "Instances", obj_cello);
	C_08.image_xscale = -1;
}



//dir_02 = point_direction(V03.x, V03.y, obj_player.x, obj_player.y);
dir_02 = point_direction(V03.x, V03.y, obj_player.x, obj_player.y) - 2*(point_direction(V03.x, V03.y, obj_player.x, obj_player.y) - 270) ;
dir_03 = point_direction(V03.x, V03.y, obj_player.x, obj_player.y) /*- 2*(point_direction(V03.x, V03.y, obj_player.x, obj_player.y) - 270)*/;

enemy_bullet_path(oebp, 270, path_violin, V01.x, V01.y, 4);
enemy_bullet_path(oebp, 260, path_violin, V02.x, V02.y, 4);
enemy_bullet_path(oebp, dir_02, path_violin, V03.x, V03.y, 4);

enemy_bullet_path(oebp, dir_03, path_violin, V04.x, V04.y, 4);
enemy_bullet_path(oebp, 280, path_violin, V05.x, V05.y, 4);
enemy_bullet_path(oebp, 270, path_violin, V06.x, V06.y, 4);


enemy_bullet_path(oebp, 180, path_violin, C_07.x, C_07.y, 4);
enemy_bullet_path(oebp, 00, path_violin, C_08.x, C_08.y, 4);

enemy_bullet(oebw, 270, bx, by);
enemy_bullet(oebw, 270, bx+20, by);
enemy_bullet(oebw, 270, bx-20, by);



