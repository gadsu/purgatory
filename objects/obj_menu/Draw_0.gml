/// @description Insert description here
// You can write your code in this editor


var i = 0;
//this draws all of our menu icons
repeat(buttons)
{
	draw_set_font(font_menu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	xx = menu_x;
	yy = menu_y + (button_h + button_padding) * i + 256*(1-unfold[i]);
	
	draw_set_color(c_dkgray);
	draw_set_color(c_ltgray);
	// Change the color of the menu icon we are curently on
	if(menu_index == i)
	{
		draw_set_color(c_red);
	}
	// this draws all of the menu buttons
	draw_text(xx, yy, button[i]);
	
	i++;
}