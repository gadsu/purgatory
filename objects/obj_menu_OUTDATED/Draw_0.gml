/// @description Insert description here
// You can write your code in this editor


var i = 0;


/*
var j = max(menu_index - 1, 0);
for (var k = 0; k < buttons; k++)
	{
		show_debug_message(j);
		j++
		if(j >= buttons)
		{
			j = 0;
		}
		
	}
*/
var j = menu_index;


 // the move variable
//this draws all of our menu icons
repeat(buttons)
{
	draw_set_font(font_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	j++;
	if(j >= buttons)
	{
		j = 0;
	}
	xx = menu_x;
	yy = menu_y + (button_h + button_padding) * i - please * 5;
		
	
	
	
	//draw_set_color(c_dkgray);
	//draw_set_color(c_ltgray);
	draw_set_color(c_white);
	// Change the color of the menu icon we are curently on
	/*if(menu_index == i)
	{
		draw_set_color(c_red);
	}
	*/
	
	if(i == 1)
	{
		draw_set_color(c_red);
	}
	
	//sets the transparency of a button based on its distance from the current selection
	switch( 1 - i)
	{
		case 0:
			draw_set_alpha(1);
			break;
		case 1:
			draw_set_alpha(.5);
			break;
		case -1:
			draw_set_alpha(0.5);
			break;
		default:
			draw_set_alpha(0.25);
	}
	
	// if the up key is pressed slide everything up
	
	
	
	// this draws all of the menu buttons
	
	
	draw_text(xx, yy, ds_list_find_value(menu_ids, i));
	
	
	i++;
	
	draw_set_alpha(1);
}