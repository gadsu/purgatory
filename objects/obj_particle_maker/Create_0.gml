/// create 8 death particles, using the "enemy_bullet" scirpt for now 

i = 0;
dir = 0;

for(i = 0; i < 8; i++)
{
	enemy_bullet(obj_death_particle, dir, x, y);
	dir = dir + 45;
}
instance_destroy();