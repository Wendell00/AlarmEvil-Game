/// @description Insert description here
// You can write your code in this editor
#region MOVIMENTAÇÃO
movex = +keyboard_check(ord("A"))-keyboard_check(ord("D")) // Movimentação do eixo X
movey = +keyboard_check(ord("W"))-keyboard_check(ord("S")) // Movimentação do eixo y
hspd = movex * spd * 3
vspd = movey * spd * 3
//if (movex != 0) image_xscale = sign(movex) // alterar o lado que o player está olhando
//ta bugando isso aqui, sei lá por quekkkkk

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

if mouse_check_button_pressed(mb_left) disparar()