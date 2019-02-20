/// @description accelerates
event_inherited();

if (timer mod 12 == 0)
{
	speed_change += .025;
}


speed = speed + speed_change;

timer ++;
