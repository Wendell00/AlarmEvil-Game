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
		mp_potential_step_object(obj_player.x, obj_player.y + 5, spd, obj_border);
		//tenta jogar os objetos para cima de voce, sem necessariamente te seguir por completo
		}
		break;
	case -1:
		{
		mp_potential_step_object(obj_player.x, -obj_player.y + 10, spd * 2, obj_border);
		{
			if boladeFogo == true 
			{
				alarm[3] = 60*5
				boladeFogo = false 
		}
		}
}

if place_meeting(x,y,obj_bulletPlayer)
{
	global.hp_width -= (global.hp_maxWid/global.hp)
	if global.hp_width < 1
	{
	global.hp_width = 0	
	}	
}

if underworldif == 1
{
	underworldif = 0
	alarm[0] = 60*3
}
