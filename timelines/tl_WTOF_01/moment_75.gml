/// @descr Trumpets start
global.phase = 1;

by = obj_enemy_boss_klaus.y;
bx = obj_enemy_boss_klaus.x;
oebw = obj_enemy_bullet_wonder;
oebt = obj_enemy_bullet_turner;
oeba = obj_enemy_bullet_acel;

dir_01 = 270

enemy_bullet(oeba, 270, bx, by + 40);
enemy_bullet(oeba, 268, bx, by + 40);
enemy_bullet(oeba, 266, bx, by + 40);


TP_01 = instance_create_layer(380, 125, "Instances", obj_trumpet);
TP_01.image_angle = -70;
TP_02 = instance_create_layer(900, 125, "Instances", obj_trumpet);
TP_02.image_angle = -110;


enemy_bullet(oebw, TP_01.image_angle + 4, TP_01.x, TP_01.y);
enemy_bullet(oebw, TP_01.image_angle, TP_01.x, TP_01.y);
enemy_bullet(oebw, TP_01.image_angle - 4, TP_01.x, TP_01.y);

enemy_bullet(oebw, TP_02.image_angle + 4, TP_02.x , TP_02.y);
enemy_bullet(oebw, TP_02.image_angle, TP_02.x, TP_02.y );
enemy_bullet(oebw, TP_02.image_angle - 4, TP_02.x, TP_02.y);