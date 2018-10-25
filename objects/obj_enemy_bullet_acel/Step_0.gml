/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (timer mod 12 == 0)
{
	speed_change += .02;
}


speed = speed + speed_change;

timer ++;


