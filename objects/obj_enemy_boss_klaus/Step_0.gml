/// @description 
timer++

//Step code is in the parent file
event_inherited();

if(timer == 60)
{
	alarm[0] = 60;
}

//Turn Red when hit
if (blendtime > 0)
{
	blendtime--;
}
else
{
	blend = c_white;
}


//If the player dies stop the timeline 

if(instance_exists(obj_player) == false)
{
	timeline_running = false;
}

//Boss gains favor
if(!instance_exists(obj_textbox) && timer mod 25 == 0)
{
	health = health - 0.1;
}
