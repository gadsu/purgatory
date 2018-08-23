// This scirpt will be used to spawn enemies given the type of unit, x coordinate
// path taken, and any other behavior

var type, enemy, path_set, x_cord, y_cord;


type     = argument[0];
enemy    = argument[1];
path_set = argument[2];
x_cord   = argument[3];
y_cord   = argument[4];


object_enemy = enemy;
global.spawn = path_set;

//If the type used is path this is the if statement used
if (type == "path")
{
		// Spawn the enemy at a certain area with a certain path
		global.spawn = path_set;
		instance_create_depth(x_cord, y_cord, 0, enemy);
	
}
if (type == "drop")
{
	instance_create_depth(x_cord, -16, 0, enemy);
}
if (type == "boss")
{
	instance_create_depth(x_cord, -100, 0, enemy);
}
return;
