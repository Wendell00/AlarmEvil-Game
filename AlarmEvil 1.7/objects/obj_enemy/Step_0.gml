randx = irandom_range(95,920)
randy = irandom_range(58,570)
switch(room)
{
	

	case rm_round2:
		if global.hp_width < metadeVida
		{
			//posição triangular apos perder 2/4 da vida
			mp_potential_step_object(500 , -100, spd , obj_border);
		}
		mp_potential_step_object(-obj_player.x, obj_player.y, spd , obj_border);
		// ataque vertical de tiros
		
		
		break;
	case rm_round1:
		if mp_potential_step_object(obj_player.x, obj_player.y + 5, spd, obj_border) == 1
		{
			if contadorDanoInicial++ > 49
			{
				contadorDanoInicial = 0
				darDano()	
			}
		}
		else contadorDanoInicial = 0
		//tenta jogar os objetos para cima de voce, sem necessariamente te seguir por completo	
		
		break;
	case rm_round3:	
		mp_potential_step_object(-obj_player.x , -obj_player.y , spd * 2, obj_border)
		break;

}



if place_meeting(x,y,obj_bulletPlayer)
{
	danoPlayer()
}

if underworldif == 1
{
	underworldif = 0
	alarm[0] = 60*3
}
