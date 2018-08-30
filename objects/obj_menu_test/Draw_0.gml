/// @description Draw the Menus

anim += keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);
//anim = clamp (anim, 0, array_length_1d(menu_ids) -1 );

if (anim > array_length_1d(menu_ids) - 1)
{
	anim = 0;
}
if (anim < 0)
{
	anim = 3;
}


anim_n = scr_reach_between(anim_n, anim, 4);

draw_set_font(font_menu);
draw_set_valign(fa_middle);
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
	x+lengthdir_x(120,(i - anim_n)* 0), // x length of an ellispes
	y+lengthdir_y(120,(i - anim_n)* 25), // y length of an ellispes
	menu_ids[i],1,1,(i - anim_n)* 10); // Word Rotation
}

