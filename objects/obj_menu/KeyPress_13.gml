/// @description Insert description here
// You can write your code in this editor

switch(menu_index)
{
	case 1:
		show_debug_message("NEW MENU");
		room_goto(1);
		break;
		
	case 0:
		game_end();
}