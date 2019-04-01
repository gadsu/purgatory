///@descr Cello 1 and 2

enemy_bullet(oebw, 270, bx, by);

C_01 = instance_create_layer(365, 285, "Instances", obj_cello);
C_02 = instance_create_layer(915, 285, "Instances", obj_cello);
C_02.image_xscale = -1;

enemy_bullet_path(oebp, 180, path_violin, C_01.x, C_01.y, 4);
enemy_bullet_path(oebp, 00, path_violin, C_02.x, C_02.y, 4);