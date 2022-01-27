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
if place_meeting(obj_player.x, obj_player.y, obj_bullet) or place_meeting(x,y,obj_underworldHole) or place_meeting(x,y, obj_fireball)
{	
	darDano()
}

#endregion

#region IR PARA A FASE 2

if global.hp_width < 1 and count == 1 // Condição para que quando o HP do inimigo zere, mude de fase
{
	instance_create_layer(200,270,"instances",obj_damage)
	instance_create_layer(600,270,"instances",obj_speed)
	instance_create_layer(90,150,"instances",obj_upgradeBg)
	instance_destroy(obj_player)
	instance_destroy(obj_enemy)
	count = 0
}
#endregion

#region Attack 1

if place_meeting(x, y, obj_enemy)
{
	if keyboard_check_pressed(vk_space) 
	{
		danoPlayer()
	}
}

#endregion

#region TIROS 
switch(room)
{
	case global.numberRoom1:
		break;
	 default:
		if mouse_check_button_pressed(mb_left) disparar()
		break;
}
	
#endregion