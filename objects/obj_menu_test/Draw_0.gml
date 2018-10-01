/// @description Draw the Menus

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
	x+lengthdir_x(length_x,(i - anim_n)* 10), // x length of an ellispes
	y+lengthdir_y(length_y,(i - anim_n)* 40), // y length of an ellispes
	menu_ids[i],1,1,(i - anim_n)* 10); // Word Rotation
}

