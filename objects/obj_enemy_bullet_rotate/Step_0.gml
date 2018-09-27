/// @description Turn the Bullet

if (timer mod 10 == 0 && timer != 0)
{
	dir_change = dir_change + 0.035 + ( .005 * dir_otherchange);
	
}
if (timer mod 30 == 0)
{
	dir_otherchange++;
	speed = speed +(.015);
}


direction += dir_change;
timer++;