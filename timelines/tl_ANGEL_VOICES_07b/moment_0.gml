///@description MB, MD

L1 = global.Iarray[0];
L2 = global.Iarray[1];
L3 = global.Iarray[2];
L4 = global.Iarray[3];


by = obj_enemy_boss_songtest.y;
bx = obj_enemy_boss_songtest.x;
oebw = obj_enemy_bullet_wonder;
oebt = obj_enemy_bullet_turner;
oeba = obj_enemy_bullet_acel;
oebl = obj_enemy_bullet;




//enemy_bullet(oebw, 270, bx, by + 40);
enemy_bullet_vinyl(-120, 1075, 270, (bx - 193) - 40 , by + 100, 5);


//enemy_bullet(oebw, 270, bx - 49, by + 40);

dir_01 = 200;
for (var i = 0; i < 7; i++)
{
	enemy_bullet(oebw, dir_01 + (i * 13), bx - 60 + (i * 4), by + 40);
}