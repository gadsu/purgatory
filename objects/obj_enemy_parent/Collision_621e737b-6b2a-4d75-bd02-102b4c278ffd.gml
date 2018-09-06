/// Lose hp when collding with a player made bullet
//Checks to ensure the bullet exists 
//Checks if enemy is dead
//Destroys bullet
if(instance_exists(obj_shot.id))
{
	hp = hp - obj_shot.damage;
}
//show_debug_message(hp);

if(hp <= 0)
{
	score += 10;
	instance_create_depth(x,y,0,obj_particle_maker);
	instance_destroy();
}

instance_destroy(obj_shot.id);