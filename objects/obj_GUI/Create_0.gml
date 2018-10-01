/// @description Make the borders on the UI layer
//Draw the borders of the screen
if (room == 1) // if the room index equals the game room
{
	instance_create_layer(room_width - room_width, 0,"UI_layer", obj_border);
	instance_create_layer(960,y,"UI_layer", obj_border);
	
}
