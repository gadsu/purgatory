/// @Colliding with a bullet
if (iframes == 0)
{
	//losing hp will only occur when the iframes hits 0 if its inside
	// the if function
	hp --;
	iframes = 120;
	show_debug_message("HIT");
}

