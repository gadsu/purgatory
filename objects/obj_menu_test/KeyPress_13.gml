/// @description Menu Selection

switch(anim)
{
	
	case 0:
		game_end();
		break;
		
		
	case 2:
		room_goto(2);
		draw_set_alpha(1);
		show_debug_message("High Score");
		show_debug_message(room);
		instance_destroy();
		break;
	case 3:
		show_debug_message("NEW MENU");
		audio_play_sound(menu_select_sound_effect, 1 , false);
		draw_set_alpha(1);
		room_goto(1);
		break;
		
}
