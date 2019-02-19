///@description Main Beat(MB), MD, Laser

 
enemy_bullet_speed(oebl, dir_02 + random_range(-5, 5), bx, by + 40, 6);
 
dir_01 = 200;
for (var i = 0; i < 7; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 13), bx - 60 + (i * 4), by + 40);
}




//enemy_bullet_laser(L4.x - 4, L4.y, 7.5, 720, 355);


