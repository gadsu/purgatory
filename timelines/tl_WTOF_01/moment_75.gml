/// @descr Trumpets start
global.phase = 1;

by = obj_enemy_boss_klaus.y;
bx = obj_enemy_boss_klaus.x;
oebw = obj_enemy_bullet_wonder;
oebt = obj_enemy_bullet_turner;
oeba = obj_enemy_bullet_acel;
oebp = obj_enemy_bullet_path;

TP_01 = instance_create_layer(380, 75, "Instances", obj_trumpet);
TP_01.image_angle = -70;
TP_02 = instance_create_layer(900, 75, "Instances", obj_trumpet);
TP_02.image_angle = -110;


enemy_bullet_trumpet(oebw, TP_01.image_angle, TP_01.x, TP_01.y);
enemy_bullet_trumpet(oebw, TP_02.image_angle, TP_02.x, TP_02.y);

