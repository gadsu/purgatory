///@descr Cello 5 and 6

C_05 = instance_create_layer(365, 495, "Instances", obj_cello);
C_06 = instance_create_layer(915, 495, "Instances", obj_cello);
C_06.image_xscale = -1;

enemy_bullet_path(oebp, 180, path_cello, C_01.x, C_01.y, 4);
enemy_bullet_path(oebp, 00, path_cello, C_02.x, C_02.y, 4);

enemy_bullet_path(oebp, 180, path_cello, C_03.x, C_03.y, 4);
enemy_bullet_path(oebp, 00, path_cello, C_04.x, C_04.y, 4);

enemy_bullet_path(oebp, 180, path_violin, C_05.x, C_05.y, 4);
enemy_bullet_path(oebp, 00, path_violin, C_06.x, C_06.y, 4);





enemy_bullet_path(oebp, 250, path_violin, V01.x, V01.y, 4);
enemy_bullet_path(oebp, 260, path_violin, V02.x, V02.y, 4);
enemy_bullet_path(oebp, 270, path_violin, V03.x, V03.y, 4);
enemy_bullet_path(oebp, 270, path_violin, V04.x, V04.y, 4);
enemy_bullet_path(oebp, 280, path_violin, V05.x, V05.y, 4);
enemy_bullet_path(oebp, 290, path_violin, V06.x, V06.y, 4);