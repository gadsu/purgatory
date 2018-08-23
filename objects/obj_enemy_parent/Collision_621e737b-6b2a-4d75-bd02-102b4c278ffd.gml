/// Lose hp when collding with a player made bullet
hp = hp - obj_shot.damage;

if(hp <= 0)
{
	instance_create_depth(x,y,0,obj_particle_maker);
	instance_destroy();
}
