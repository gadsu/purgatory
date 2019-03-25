/// @description Menu Selection

if(clickable == false && options == false && hud_customize == false)
{
	switch(anim)
	{
	
	case 0:
		game_end();
		break;
		
	case 1:
		show_debug_message("Options");
		clickable = false;
		options = true;
		break;
		
		
	case 2:
		room_goto(room_highscore);
		draw_set_alpha(1);
		show_debug_message("High Score");
		//show_debug_message(room);
		instance_destroy();
		break;
	case 3:
		//show_debug_message("NEW MENU");
		audio_play_sound(menu_select_sound_effect, 1 , false);
		draw_set_alpha(1);
		//room_goto(room_level_select);
		clickable = true;
		anim = 0;
		draw_sprite(TempMenu, -1, 224, 0);
		break;
		
	}
}
else if(options == true)
{
	switch(anim)
		{
	
		case 0:
			options = false;
			anim = 3;
			break;
		case 1:
			//HUD CHANGES
			hud_customize = true;
			options = false;
			break;
		case 2:
			//SOUND CHANGES
			break;
		}
}
else if(hud_customize == true)
{
	switch(anim)
		{
	
		case 0:
			hud_customize = false
			options = true;
			anim = 1;
			break;
		case 1:
			object_set_sprite(obj_border, spr_Blue_C_HUD)
			break;
			
		case 2:
			object_set_sprite(obj_border, spr_Blue_SC_HUD)
			break;
		
		case 3:
			object_set_sprite(obj_border, spr_Green_C_HUD)
			break;
		
		case 4:
			object_set_sprite(obj_border, spr_Green_SC_HUD)
			break;
		
		case 5:
			object_set_sprite(obj_border, spr_Purple_C_HUD)
			break;
		
		case 6:
			object_set_sprite(obj_border, spr_Purple_SC_HUD)
			break;
		
		case 7:
			object_set_sprite(obj_border, spr_Red_C_HUD)
			break;
		
		case 8:
			object_set_sprite(obj_border, spr_Red_SC_HUD)
			break;
		
		case 9:
			object_set_sprite(obj_border, spr_Yellow_C_HUD)
			break;
		
		case 10:
			object_set_sprite(obj_border, spr_Yellow_SC_HUD)
			break;
		}
}
