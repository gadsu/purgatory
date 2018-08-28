/// @description Menu Selection

switch(anim)
{
	
	case 0:
		game_end();
		break;
		
	case 3:
		show_debug_message("NEW MENU");
		draw_set_alpha(1);
		room_goto(1);
		break;
		
}
