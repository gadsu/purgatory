
//This next code will either return 1 or -1 depend which key is being pressed, and return 0 if nothing or both
//are being pressed down
menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

// add the number to the menu index array
menu_index += menu_move;


//IF we go under or over our array size, make it go back around
if (menu_index < 0)
{
	menu_index = buttons - 1;
}
if (menu_index > buttons - 1)
{
	menu_index = 0;
}

//This plays a sound once you switch menu icons, but right now there isnt a sound
if (menu_index != last_selected)
{
	audio_play_sound(snd_menu_switch,1,false);	
}
last_selected = menu_index;
