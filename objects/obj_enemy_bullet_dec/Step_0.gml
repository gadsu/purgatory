/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (timer mod 15 == 0)
{
	speed_change += .012;
}


if (speed > 1)
{
	speed = speed - speed_change;
}
else
{
	speed = 1;
}

timer ++;


