/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_space)
{
	alarm[0] = 10
	if global.firstTime {
		room_goto(rm_cut1)
		global.firstTime = false
	}
	else
	{
		room_goto(rm_transition01)	
	}	
}
