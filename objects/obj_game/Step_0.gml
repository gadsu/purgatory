if (keyboard_check_pressed(vk_escape))
{
	//If the game is not already paused and is currently not in the menu, the game will pause by removing all
	//movement, and the game uses the last frame for the background
	if(pause == false && current_room != room_menu)
	{
		pause = true;
		
		layer_vspeed(layer_get_id("Background"), 0);
		global.PauseBack=sprite_create_from_surface(application_surface,0,0,400,600,0,0,0,0);
		layer_set_visible("Background", false);
		screen_save("screenshot.png");
		
		instance_deactivate_all(true);
	}
	//If the game is already paused, everything resumes
	else if(pause == true)
	{
		pause = false;
		layer_vspeed(layer_get_id("Background"), 2);
		instance_activate_all();
		layer_set_visible("Background", true);
	}
}
