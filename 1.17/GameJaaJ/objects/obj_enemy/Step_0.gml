randx = irandom_range(95,920)
randy = irandom_range(58,570)
switch(room)
{
	case 0:
		if global.hp_width < metadeVida
		{
			//posição triangular apos perder 2/4 da vida
			mp_potential_step_object(500 , -100, spd , obj_border);
		}
		mp_potential_step_object(-obj_player.x, obj_player.y, spd , obj_border);
		// ataque vertical de tiros
break;
	case 1:
		{
		mp_potential_step_object(obj_player.x + 2 , obj_player.y + 40, spd , obj_border); 
		//tenta jogar os objetos para cima de voce, sem necessariamente te seguir por completo
		}

}
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
