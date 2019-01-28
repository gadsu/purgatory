timer++

//Step code is in the parent file
event_inherited();

if(dialogue_1 == true)
{
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "So, the reigning champion meets her foe.";
	myText[1] = "I gotta say, that takes some guts.";
	myText[2] = "Now... I truly am sorry about this... but I gotta beat you into the ground.";
	mySpeaker = -1;
}

if(!instance_exists(obj_textbox) && dialogue_1 == true && timer > 1)
{
	alarm[0] = 60;
	dialogue_1 = false;
	dialogue_2 = true;
	par_speaker.detection_radius = 10;
}
	
//Text for when the player dies
if(!instance_exists(obj_player) && dialogue_2 == true )
{
	par_speaker.detection_radius = 1000;
	
	reset_dialogue_defaults();
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "I would love to say you had a chance, but you simply do not have what it takes.";
	myEffects[0] = [57,1,60,0];
	myText[1] = "Not for a challenge like this.";
	mySpeaker = -1;
	
	if(instance_exists(obj_textbox))
	{
		alarm[2] = 5;
	}
}	
if(!instance_exists(obj_textbox) && (dialogue_2 == true || dialogue_3 == true) && text_01 == true)
{
	par_speaker.detection_radius = 10;
	reset_dialogue_defaults();
	show_debug_message("please work");
	instance_create_depth(room_width/2, room_height/2, -1, obj_highscoretextbox);
	//text_01 = false;
	dialogue_2 = false;
	dialogue_3 = false;

}


// For some reason the top thing doesnt like it when i add a clause for dialogue_3


if(hp <= 0 && dialogue_3 != true && text_01 == false) {
	
	timeline_speed = 0;
	par_speaker.detection_radius = 1000;
	
	
	reset_dialogue_defaults();
	myName = "D.0.T.";
	myPortrait = spr_dot_dialogue;
	myText[0] = "Well, damn.";
    myText[1] = "No one was expecting some nobody to get in and take out the reigning champ the first time around, especially me.";
    myText[2] = "Good job.";
    myText[3] = "Well, you have the reins now.";
    myText[4] = "Make the most of it, and please, for the love of music, do not screw it up.";
	mySpeaker = -1;
	
	
	if(instance_exists(obj_textbox))
	{
		alarm[3] = 5;
	}
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
// DEBUG MODE ON

if(instance_exists(obj_player) == false)
{
	timeline_running = false;
}

