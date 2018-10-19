/// @description Change the Image
if (image_index != 0)
{
	if (image_index <= 5 && timer mod 2 == 0)
	{
		image_index--;
	}
	else if (image_index > 5)
	{
		image_index--;
	}
}

// start from the second one, the first will always have a hitbox
// This will make sure the equalizer has hitboxes
for (var i = 1; i < 10; i++)
{
	//If there are no Hitboxes at a new box location, make a new one
	if(i <= image_index && if_hitboxplaced[i,0] == false)
	{
		if_hitboxplaced[i,0] = true;
		if_hitboxplaced[i,1] = instance_create_layer(x, y + 1 + (i * 30),"Instances", obj_equalizerhitbox);	
	}
	// Makes sure that it deletes the other hitboxes if there is no bar there
	if(i > image_index && if_hitboxplaced[i,0] == true)
	{
		if_hitboxplaced[i,0] = false;
		instance_destroy(if_hitboxplaced[i,1]);
	}
}



//Make the specific equalizer move(DEBUG)
key_pressed = keyboard_lastkey;

switch (key_pressed)
{
	case 97: EQ1.image_index = 10;
		keyboard_lastkey = -1;
		break;
	case 98: EQ2.image_index = 10;
		keyboard_lastkey = -1;
		break;
	case 99: EQ3.image_index = 10;
		keyboard_lastkey = -1;
		break;
	case 100: EQ4.image_index = 10;
		keyboard_lastkey = -1;
		break;
	case 101: EQ5.image_index = 10;
		keyboard_lastkey = -1;
		break;
	case 102: EQ6.image_index = 10;
		keyboard_lastkey = -1;
		break;
}
timer++;