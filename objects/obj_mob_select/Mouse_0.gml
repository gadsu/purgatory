/// @description Click
if(sprite_index == spr_MOB_highlighted && obj_menu.clickable == true)
{
	global.boss_name = "MOB";
	room_goto(room_MOB);
}