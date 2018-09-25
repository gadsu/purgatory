/// @description Turn the Bullet
//if (timer <= tstep)
//{
//	direction += .9;
//	//show_debug_message("1")
//}
//else if (timer <= tstep*2)
//{
//	direction -= 2.25;
//	//show_debug_message("2")
//}
//else if (timer <= tstep*3)
//{
//	direction += 2;
//	//show_debug_message("3")
//}
//else if (timer <= tstep*4)
//{
//	direction -= 2;
//	//show_debug_message("4")
//}
//else if (timer <= tstep*5)
//{
//	direction += 2;
//}
//else if (timer <= tstep*6)
//{
//	direction -= 2;
//}
//else if (timer <= tstep*7)
//{
//	direction += 2;
//}
//timer++;

if (timer mod 30 == 0 && timer != 0)
{
	if (direction > 269)
	{
		dir_change = -2;
	}
	else
	{
		dir_change = 2;
	}
}

direction += dir_change;
timer++;