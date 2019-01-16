///@description Main Beat(MB)
dir_02 = point_direction(bx,by, obj_player.x, obj_player.y);
enemy_bullet_speed(oebl, dir_02 + random_range(-5, 5), bx, by + 40, 6);