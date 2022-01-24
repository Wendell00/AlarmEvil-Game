#region MOVIMENTAÇÃO
movex = -keyboard_check(ord("A"))+keyboard_check(ord("D"))
movey = -keyboard_check(ord("W"))+keyboard_check(ord("S"))
hspd = movex * spd * 3
vspd = movey * spd * 3
if (movex != 0) image_xscale = sign(movex)

if place_meeting(x + hspd, y, obj_border)
{
	while !place_meeting(x+sign(hspd),y,obj_border)
	{
		x += sign(hspd)
	}
	hspd = 0
}
x += hspd
if place_meeting(x,y + vspd, obj_border)
{
	while !place_meeting(x,y+sign(vspd),obj_border)
	{
		y += sign(vspd)
	}
	vspd = 0
}
y += vspd
#endregion 
#region VIDA DO PLAYER 

//tiro mata o player, tá matando insta na true, mas to indo dormir ve ai
if place_meeting(obj_player.x, obj_player.y, obj_bullet)
{
	if global.life > 0
	{	
		global.life--
	}
	else global.life = 0
	if global.life == 0 
	{
		game_restart()
	}	
}

#endregion
#region round 2 ir

if global.hp_width < 1 and count == 1
{
	count = 0
	instance_destroy(obj_enemy)
	instance_destroy(obj_rangeEnemy)
	alarm[0] = 60*3
}
#endregion