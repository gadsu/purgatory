/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (timer mod 15 == 0)
{
	speed_change += .015;
}


speed = speed + speed_change;

timer ++;


