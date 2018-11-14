/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// if it reaches the end of a path, destroy itself. 
if (path_position == 1)
{
	instance_destroy();
}