menu_x = x;
menu_y = y;

button_h = 32;
button_w = 256;
button_padding = 8;
// buttons
button[0] = "Quit Game";
button[1] = "Story Mode";
button[2] = "Practice Mode";
button[3] = "Options";
buttons = array_length_1d(button);

menu_ids = ds_list_create();

for (var i = 0; i < buttons; i++)
{
	ds_list_add(menu_ids, button[i]);
}

//Movement is for moving the 
movement = false;
stop = false;
please = 0;


menu_index = 1;
last_selected = 0;
/*
var i = 0;
repeat(buttons)
{
	unfold[i] = 0;
	i++;
}
*/