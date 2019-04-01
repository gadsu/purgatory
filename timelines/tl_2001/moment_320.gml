///@descr Cello 5 and 6

enemy_bullet(oebw, 270, bx, by);

C_05 = instance_create_layer(365, 495, "Instances", obj_cello);
C_06 = instance_create_layer(915, 495, "Instances", obj_cello);
C_06.image_xscale = -1;

enemy_bullet_path(oebp, 180, path_violin, C_01.x, C_01.y, 4);
enemy_bullet_path(oebp, 00, path_violin, C_02.x, C_02.y, 4);

enemy_bullet_path(oebp, 180, path_violin, C_03.x, C_03.y, 4);
enemy_bullet_path(oebp, 00, path_violin, C_04.x, C_04.y, 4);

enemy_bullet_path(oebp, 180, path_violin, C_05.x, C_05.y, 4);
enemy_bullet_path(oebp, 00, path_violin, C_06.x, C_06.y, 4);