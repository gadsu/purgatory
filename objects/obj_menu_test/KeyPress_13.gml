/// @description Menu Selection

switch(anim)
{
	
	case 0:
		game_end();
		break;
		
	case 3:
		show_debug_message("NEW MENU");
		audio_play_sound(menu_select_sound_effect, 1 , false);
		draw_set_alpha(1);
		room_goto(1);
		break;
		
}
