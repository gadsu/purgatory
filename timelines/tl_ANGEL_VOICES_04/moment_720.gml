///@description Main Beat(MB), RFD, Laser
enemy_bullet_speed(oebl, dir_02 + random_range(-5, 5), bx, by + 40, 6);


dir_01 = 270;
for (var i = 0; i < 7; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 13), bx - 30 + (i * 4), by + 40);
}





//enemy_bullet(oebw, 270, bx + 49, by + 40);
enemy_bullet_laser(L3.x -4, L3.y, 7.5, 720, 0);

