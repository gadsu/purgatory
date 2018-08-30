/// @making the player move
//input is checked on each step
/*
switch (state)
{

	case "IDLE":
	{
		vx = 0;
		vy = 0;
		
		check_input_all();
		break;
	}
	case "UP":
	{
		check_input_all();
		
		vy = -1 * player_speed;
		
		
		break;
	}
	case "DOWN":
	{
		check_input_all();
		
		vy = 1 * player_speed;
		
		
		break;
	}
	case "RIGHT":
	{
		check_input_all();
		vx = 1 * player_speed;
		
		
		
		break;
	}
	case "LEFT":
	{
		check_input_all();
		vx = -1 * player_speed;
		
		
		
		break;
	}
}
check_collision_obj(vx,vy, obj_solid);

*/

if (Input.up == true)
{
	y -= player_speed;
}
if (Input.down == true)
{
	y += player_speed;
}
if (Input.left == true)
{
	x -= player_speed;	
}
if (Input.right == true)
{
	x += player_speed;
}

//Controls switching instruments
if (Input.control == true && instrument_cooldown == false)
{
	show_debug_message(instrument);
	
	instrument += 1;
	if(instrument >= 3)
	{
		instrument = 0;
	}
	instrument_cooldown = true;
	alarm[1] = 40;
}

if (Input.button_a == true && cooldown == false)
{
	var inst
	inst = instance_create_depth(x,y,1,obj_shot);
	with (inst)
		{
			instrument = other.instrument;
		}
	cooldown = true;
	alarm[0] = 10;
}



//clamping the player to stay on the screen

x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y = clamp(y, 400, room_height - sprite_height/2);

// if you collide with any enemy, loose hp
if (hp <= 0)
{
	global.dead = true;
	instance_destroy();
	show_debug_message("NEW MENU");
		room_goto(0);
}


//creating the iframes

if (iframes > 0)
{
	iframes--;
}