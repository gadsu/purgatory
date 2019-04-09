/// @description Draw the Menus
//--------------------------------------------------
//Main Menu
if(clickable == false && options == false && hud_customize == false)
{
	obj_menu_logo.image_alpha = 1;
	obj_back_select.image_alpha = 0;
	obj_D0T_select.image_alpha = 0;
	obj_klaus_select.image_alpha = 0;
	obj_mob_select.image_alpha = 0;
	obj_lines.image_alpha = 0;
	
	anim += keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);

	if (anim > array_length_1d(menu_ids) - 1)
	{
		anim = 0;
	}
	if (anim < 0)
	{
		anim = array_length_1d(menu_ids) - 1;
	}


	anim_n = scr_reach_between(anim_n, anim, 4);

	draw_set_font(font_menu);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	for (var i = 0; i < array_length_1d(menu_ids); i++)
	{
		if (anim == i)
		{
			draw_set_color(c_red);
		}
		else
		{
			draw_set_color(c_white);
		}
		//draw_text(x, y + ((i - anim_n) * 16), menu_ids[i]);
		//show_debug_message(i - anim);
		switch( i - anim)
		{
			case 0:
				draw_set_alpha(1);
				break;
			case -1:
			case 1:
				draw_set_alpha(.33);
				break;
			case 2:
			case -2:
				draw_set_alpha(0.15);
				break;
			default:
				draw_set_alpha(0.01);
		}
	
		//Draws the text in a rotated form
		draw_text_transformed(
		x+lengthdir_x(length_x,(i - anim_n)* 0), // x length of an ellispes
		y+lengthdir_y(length_y,(i - anim_n)* 25), // y length of an ellispes
		menu_ids[i],1,1,(i - anim_n)* 10); // Word Rotation
	}
}
//--------------------------------------------------
//Stage Select
else if(clickable == true && options == false)
{
	obj_menu_logo.image_alpha = 0;
	obj_back_select.image_alpha = 1;
	obj_D0T_select.image_alpha = 1;
	obj_klaus_select.image_alpha = 1;
	obj_mob_select.image_alpha = 1;
	obj_lines.image_alpha = 1;
}
//--------------------------------------------------
//Options Menu
else if(clickable == false && options == true)
{
	obj_menu_logo.image_alpha = 0;
	
	
	anim += keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);

	if (anim > array_length_1d(option_ids) - 1)
	{
		anim = 0;
	}
	if (anim < 0)
	{
		anim = array_length_1d(option_ids) - 1;
	}


	anim_n = scr_reach_between(anim_n, anim, 4);

	draw_set_font(font_menu);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	for (var i = 0; i < array_length_1d(option_ids); i++)
	{
		if (anim == i)
		{
			draw_set_color(c_red);
		}
		else
		{
			draw_set_color(c_white);
		}
		//draw_text(x, y + ((i - anim_n) * 16), menu_ids[i]);
		//show_debug_message(i - anim);
		switch( i - anim)
		{
			case 0:
				draw_set_alpha(1);
				break;
			case -1:
			case 1:
				draw_set_alpha(.33);
				break;
			case 2:
			case -2:
				draw_set_alpha(0.15);
				break;
			default:
				draw_set_alpha(0.01);
		}
	
		//Draws the text in a rotated form
		draw_text_transformed(
		x+lengthdir_x(length_x,(i - anim_n)* 0), // x length of an ellispes
		y+lengthdir_y(length_y,(i - anim_n)* 25), // y length of an ellispes
		option_ids[i],1,1,(i - anim_n)* 10); // Word Rotation
	}
}
//--------------------------------------------------
//HUD customization
else if(hud_customize == true)
{
	anim += keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);

	if (anim > array_length_1d(hud_ids) - 1)
	{
		anim = 0;
	}
	if (anim < 0)
	{
		anim = array_length_1d(hud_ids) - 1;
	}


	anim_n = scr_reach_between(anim_n, anim, 4);

	draw_set_font(font_menu);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	for (var i = 0; i < array_length_1d(hud_ids); i++)
	{
		if (anim == i)
		{
			draw_set_color(c_red);
		}
		else
		{
			draw_set_color(c_white);
		}
		switch( i - anim)
		{
			case 0:
				draw_set_alpha(1);
				break;
			case -1:
			case 1:
				draw_set_alpha(.33);
				break;
			case 2:
			case -2:
				draw_set_alpha(0.15);
				break;
			default:
				draw_set_alpha(0.01);
		}
	
		//Draws the text in a rotated form
		draw_text_transformed(
		x+lengthdir_x(length_x,(i - anim_n)* 0), // x length of an ellispes
		y+lengthdir_y(length_y,(i - anim_n)* 25), // y length of an ellispes
		hud_ids[i],1,1,(i - anim_n)* 10); // Word Rotation
	}
	draw_set_alpha(1);
	draw_sprite(object_get_sprite(obj_border), -1, room_width -320 , 0)
	
}
//--------------------------------------------------
//Something went wrong if we're here.
else
{
	show_debug_message("MENU ERROR");
	clickable = false
	options = false
}