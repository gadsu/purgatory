//Checks for pause
//Draws "Paused" if game is in pause state
if (pause == true)
{
	draw_text_transformed_color((room_width / 2) - 75, room_height / 2, string("Paused"), 3, 3, 0, c_teal, c_teal, c_teal, c_teal, 1);
}