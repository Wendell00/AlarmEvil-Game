if place_meeting(x,y, obj_player)
{
	instance_destroy(obj_fireball)
	
}
spd = 9 * global.speedEnemy
if spd > 18
{
	spd = 18	
}
move_towards_point(obj_player.x, obj_player.y, spd)