///@description Main Beat(MB), MD, Laser
enemy_bullet(oebw, 270, bx, by + 40);

//enemy_bullet(oebw, 270, bx - 49, by + 40);
dir_01 = 200;
for (var i = 0; i < 6; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 14), bx - 60 + (i * 4), by + 40);
}


//enemy_bullet(oebw, 270, bx + 49, by + 40);
enemy_bullet_laser(L4.x , L4.y + 20, 8, 720, 340);


