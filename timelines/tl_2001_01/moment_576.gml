dir_02 = point_direction(V03.x, V03.y, obj_player.x, obj_player.y) - 2*(point_direction(V03.x, V03.y, obj_player.x, obj_player.y) - 270) ;
dir_03 = point_direction(V03.x, V03.y, obj_player.x, obj_player.y) /*- 2*(point_direction(V03.x, V03.y, obj_player.x, obj_player.y) - 270)*/;
enemy_bullet_path(oebp, 270, path_violin, V01.x, V01.y, 4);
enemy_bullet_path(oebp, 260, path_violin, V02.x, V02.y, 4);
enemy_bullet_path(oebp, dir_02, path_violin, V03.x, V03.y, 4);

enemy_bullet_path(oebp, dir_03, path_violin, V04.x, V04.y, 4);
enemy_bullet_path(oebp, 280, path_violin, V05.x, V05.y, 4);
enemy_bullet_path(oebp, 270, path_violin, V06.x, V06.y, 4);


enemy_bullet_path(oebp, 180, path_cello, C_07.x, C_07.y, 5);
enemy_bullet_path(oebp, 00, path_cello, C_08.x, C_08.y, 5);

