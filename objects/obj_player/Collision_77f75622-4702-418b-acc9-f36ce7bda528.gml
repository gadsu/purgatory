/// @Colliding with a bullet
if (iframes == 0)
{
	if (place_meeting(x,y, obj_laser) == true)
	{
		if (obj_laser.fade == true)
		{
			return; // if you get the laser while its fading, quit the script
		}
		
	}
	
	//losing hp will only occur when the iframes hits 0 if its inside
	// the if function
	health = health - 2;
	iframes = 120;
	show_debug_message("HIT");
}

