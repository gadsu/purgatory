timer++

//Step code is in the parent file
event_inherited();

if(dialogue_1 == true)
{
/*	reset_dialogue_defaults();
	myName = "D.0.T.";
	
	switch(myName) {
		case "Klaus":
			myPortrait = spr_boss_dialogue;
			mySpeaker = -1;
			myText[0] = "Another young upstart here to attempt to take the throne?";
			myText[1] = "I will leave everything on the stage as I always do.";
			myText[2] = "Good luck. You're going to need it, boy.";
			break;
		case "MOB":
			myPortrait = spr_boss_dialogue;
			mySpeaker = -1;
			myText[0] = "Facing the best of us first? I’m harder than the rest of these clowns, so good luck.";
			myText[1] = "I’ll give you the benefit of the doubt but will still kick your ass.";
			myText[2] = "Well? Raise your instrument and let’s get started!";
			break;
		case "D.0.T.":*/
			myName = "D.0.T.";
			myPortrait = spr_dot_dialogue;
			myText[0] = "So, the reigning champion meets her foe.";
			myText[1] = "I gotta say, that takes some guts.";
			myText[2] = "Now... I am truly sorry about this... but I'm gonna have to beat you to the ground.";
			mySpeaker = -1;
//			break;
//	}
	
	
	
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
	myText[0] = "I would love to say you had a chance, but you just do not have what it takes.";
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
    myText[1] = "I don’t think anyone was expecting some nobody to come in and take out the reigning champ the first time around.";
    myText[2] = "Good job.";
    myText[3] = "Well, you’re in charge now.";
    myText[4] = "Make the most of it, and do not screw it up.";
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

