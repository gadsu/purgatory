///@description Line Bullets Warning L4

dir_01 += section;
dir_02 -= section;

area_warning(L4.x - 6, L4.y, 13, 720, 44, -30);
L4.image_angle = -30;
enemy_bullet_speed(obj_enemy_bullet_wonder, dir_01, bx - 40, by +40,6);
enemy_bullet_speed(obj_enemy_bullet_wonder, dir_02, bx + 40, by +40,6);