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
if mouse_check_button_pressed(mb_left)
{
	if global.life > 0
	{	
		global.life--
	}
	else global.life = 0
	
	if global.life == 0 && count == 0
	{
		count = 1
		tempo = get_timer()
		tempoMax = tempo + 7000000
	}	
}

tempoNow = get_timer()
if tempoNow > tempoMax
{
	tempoMax = infinity
	game_restart()	
}
#endregion

