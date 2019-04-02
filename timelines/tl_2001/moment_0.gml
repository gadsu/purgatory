

global.phase = 1;

by = obj_enemy_boss_klaus.y;
bx = obj_enemy_boss_klaus.x;
oebw = obj_enemy_bullet_wonder;
oebt = obj_enemy_bullet_turner;
oeba = obj_enemy_bullet_acel;
oebp = obj_enemy_bullet_path;
oebl = obj_enemy_bullet_large;


enemy_bullet(oebw, 270, bx, by);

V01 = instance_create_layer(370, 170, "Instances", obj_violin);
V02 = instance_create_layer(420, 170, "Instances", obj_violin);
V03 = instance_create_layer(470, 170, "Instances", obj_violin);
V04 = instance_create_layer(810, 170, "Instances", obj_violin);
V05 = instance_create_layer(860, 170, "Instances", obj_violin);
V06 = instance_create_layer(910, 170, "Instances", obj_violin);



enemy_bullet_path(oebp, 250, path_violin, V01.x, V01.y, 4);
enemy_bullet_path(oebp, 260, path_violin, V02.x, V02.y, 4);
enemy_bullet_path(oebp, 270, path_violin, V03.x, V03.y, 4);
enemy_bullet_path(oebp, 270, path_violin, V04.x, V04.y, 4);
enemy_bullet_path(oebp, 280, path_violin, V05.x, V05.y, 4);
enemy_bullet_path(oebp, 290, path_violin, V06.x, V06.y, 4);