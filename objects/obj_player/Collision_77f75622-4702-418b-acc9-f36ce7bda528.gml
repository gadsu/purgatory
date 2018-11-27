/// @Colliding with a bullet
if (iframes == 0)
{
	if (place_meeting(x,y, obj_laser) == true)
	{
		
	}
	
	//losing hp will only occur when the iframes hits 0 if its inside
	// the if function
	hp --;
	iframes = 120;
	show_debug_message("HIT");
}

