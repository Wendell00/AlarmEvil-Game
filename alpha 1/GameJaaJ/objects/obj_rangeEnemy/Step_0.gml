mp_potential_step_object(-obj_player.x, obj_player.y, spd , obj_border);
// comportamento padronizado de boss
// fazer alteração de comportamento depois da metade da vida


//dar dano so encostando no enemy
if place_meeting(x, y, obj_player)
{
	if keyboard_check_pressed(vk_space) 
	{
		if global.hp_width < 1
		{
		global.hp_width = 0	
		}
	}

}


