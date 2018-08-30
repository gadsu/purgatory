/// @description Menu Selection

switch(anim)
{
	case 0:
		show_debug_message("NEW MENU");
		draw_set_alpha(1);
		room_goto(1);
		break;
		
	case 3:
		game_end();
}
