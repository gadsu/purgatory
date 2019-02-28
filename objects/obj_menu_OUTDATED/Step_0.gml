
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
var i = 0;

/*
repeat(buttons)
{
	if (unfold[i] == 1)
	{
		i++;
	}
	if (i < buttons)
	{
		unfold[i] = min(1, unfold[i] + .02);
	}
	if (i+1 < buttons)
	{
		unfold[i+1] = min(1, unfold[i+1] + .005);
	}
}
*/



//When the up arrow is pressed, the program takes the value at the end of the line and inserts it 
//in front of the list, then deletes the same value from the end of the line
if (keyboard_check_pressed(vk_up) == true)
	{   
		show_debug_message("You pressed up");
		for (var i = 0; i > 10; i++)
		{
			please = please + 3;
			show_debug_message(please);
		}
		
		
		ds_list_insert(menu_ids, 0, ds_list_find_value(menu_ids, (ds_list_size(menu_ids) - 1)));
		ds_list_delete(menu_ids, (ds_list_size(menu_ids) - 1));		
	}
//When the down arrow is pressed, the program takes the value at the front of the line and inserts it
//at the back of the list, then deletes the same value from the front of the list
if (keyboard_check_pressed(vk_down) == true)
	{
		ds_list_insert(menu_ids,(ds_list_size(menu_ids)), ds_list_find_value(menu_ids, 0));
		ds_list_delete(menu_ids, 0);		
	}

//This plays a sound once you switch menu icons, but right now there isnt a sound
if (menu_index != last_selected)
{
	audio_play_sound(snd_menu_switch,1,false);	
}
last_selected = menu_index;
