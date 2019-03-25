/// @description Occurs when player clicks
if(clickable == true)
{
	//Klaus
	if(600<= mouse_x && mouse_x <= 700 && 120 <= mouse_y && mouse_y <= 220)
	{
		show_debug_message("Klaus");
		room_goto(room_WTOF);
	}
	//D0T
	else if(850<= mouse_x && mouse_x <= 950 && 510 <= mouse_y && mouse_y <= 610)
	{
		show_debug_message("D0T");
		room_goto(room_game);
	}
	//MOB
	else if(350<= mouse_x && mouse_x <= 450 && 510 <= mouse_y && mouse_y <= 610)
	{
		show_debug_message("MOB");
	}
}