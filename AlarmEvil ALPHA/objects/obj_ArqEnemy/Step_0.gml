/// @description Insert description here
// You can write your code in this editor
if mp_potential_step_object(obj_player.x, obj_player.y + 5, spd, obj_border) == 1
{
	if contadorDanoInicial++ > 49
	{
		contadorDanoInicial = 0
		darDano()
	}
}
else contadorDanoInicial = 0

if place_meeting(x,y,obj_bulletPlayer)
{
	danoPlayerARQ()
	if global.hp_width < 1
	{
	global.hp_width = 0
	global.hpDraw = global.hp_width
	alarm[3] = 1
	}	
}