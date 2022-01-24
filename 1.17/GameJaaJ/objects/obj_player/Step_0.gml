#region MOVIMENTAÇÃO
movex = -keyboard_check(ord("A"))+keyboard_check(ord("D")) // Movimentação do eixo X
movey = -keyboard_check(ord("W"))+keyboard_check(ord("S")) // Movimentação do eixo y
hspd = movex * spd * 3
vspd = movey * spd * 3
if (movex != 0) image_xscale = sign(movex) // alterar o lado que o player está olhando

if place_meeting(x + hspd, y, obj_border) // Colisão com a Borda do eixo X
{
	while !place_meeting(x+sign(hspd),y,obj_border)
	{
		x += sign(hspd)
	}
	hspd = 0
}
x += hspd
if place_meeting(x,y + vspd, obj_border) // Colisão com a Borda do eixo Y
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

// Se o tiro entra em colisão com o player, o player perde vida.
if place_meeting(obj_player.x, obj_player.y, obj_bullet) or place_meeting(x,y,obj_underworldHole)
{	
	if global.life > 0
	{	
		global.life--
		if global.life == 0 
		{
		game_restart()
		}
	}
}

#endregion

#region IR PARA A FASE 2

if global.hp_width < 1 and count == 1 // Condição para que quando o HP do inimigo zere, mude de fase
{
	count = 0
	instance_destroy(obj_enemy)
	instance_destroy(obj_rangeEnemy)
	alarm[0] = 60*3
}
#endregion
