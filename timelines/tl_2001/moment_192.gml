///@descr Cello 3 and 4

enemy_bullet(oebw, 270, bx, by);

C_03 = instance_create_layer(365, 390, "Instances", obj_cello);
C_04 = instance_create_layer(915, 390, "Instances", obj_cello);
C_04.image_xscale = -1;

enemy_bullet_path(oebp, 180, path_violin, C_01.x, C_01.y, 4);
enemy_bullet_path(oebp, 00, path_violin, C_02.x, C_02.y, 4);

enemy_bullet_path(oebp, 180, path_violin, C_03.x, C_03.y, 4);
enemy_bullet_path(oebp, 00, path_violin, C_04.x, C_04.y, 4);