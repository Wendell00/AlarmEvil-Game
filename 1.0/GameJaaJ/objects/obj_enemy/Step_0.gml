
mp_potential_step_object(obj_player.x, obj_player.y, 6, obj_border);

if keyboard_check_pressed(vk_space) 
{
	hp_width -= (hp_maxWid/hp)
}

if hp_width == 0
{
	instance_destroy(obj_enemy)
	instance_destroy(obj_rangeEnemy)
	room_goto(round_2)
}

