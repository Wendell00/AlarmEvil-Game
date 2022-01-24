randx = irandom_range(95,920)
randy = irandom_range(58,570)
switch(room)
{
	case 0:
		mp_potential_step_object(-obj_player.x, obj_player.y, spd , obj_border);
		break;
	case 1:
		mp_potential_step_object(obj_player.x, obj_player.y, 6, obj_border);
		break;
}
	

/*if global.hp_width > metadeVida
{
	
}else if global.hp_width <= metadeVida
{
	//asdsada
}*/

if place_meeting(x, y, obj_player)
{
	if keyboard_check_pressed(vk_space) 
	{
		global.hp_width -= (hp_maxWid/hp)
		if global.hp_width < 1
		{
		global.hp_width = 0	
		}
	}
}



if underworldif == 1
{
	underworldif = 0
	alarm[0] = 60*3
}







