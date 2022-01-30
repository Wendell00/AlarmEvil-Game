image_speed = 10
spd = 9 * global.speedEnemy
if spd > 18
{
	spd = 18	
}
move_towards_point(obj_player.x, obj_player.y, spd)


