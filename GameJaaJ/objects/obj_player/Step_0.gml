/// @description Insert description here
// You can write your code in this editor
movex = -keyboard_check(ord("A"))+keyboard_check(ord("D"))
movey = -keyboard_check(ord("W"))+keyboard_check(ord("S"))
hspd = movex * spd
vspd = movey * spd

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



