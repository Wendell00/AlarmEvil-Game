/// @description Insert description here
// You can write your code in this editor
move = -keyboard_check(ord("A"))+keyboard_check(ord("D"))
hspd = move * spd
if(move != 0) image_xscale = sign(move)


if place_meeting(x + hspd, y,obj_wall)
{
	while !place_meeting(x+sign(hspd),y,obj_wall)
	{
	 x += sign(hspd)	
	}
	hspd = 0	
}
x+= hspd


if place_meeting(x,y+vspd,obj_wall)
{
	while !place_meeting(x,y+sign(vspd),obj_wall)
	{
		y+=sign(vspd)
	}
	vspd = 0
	
}


if !place_meeting(x,y +1, obj_wall)
{
	vspd = vspd + grv
}
else
{
	vspd = 0;
	if(keyboard_check(vk_space))
	{
		vspd = -12
	}
}

y += vspd

if place_meeting(x,y + vspd, obj_wall)
{
	while !place_meeting(x,y + sign(vspd), obj_wall)
	{
		y += sign(vspd);
	}
	vspd = 0;
}

#region TIROS
/*
var flipped = direction;
var gun_x = (x+4)*(flipped)
var _xx = x + lengthdir_x(40,image_angle)
var y_offset = lengthdir_y(-20,image_angle)

if key_shoot and global.bullets > 0
{
with(instance_create_layer(_xx,y+10,"Shoot",obj_shoot))	
{
global.bullets--;
//VELOCIDADE DO TIRO
speed = 10;
//DIREÇÂO
direction = -90 + 90 * other.image_xscale;
//ANGULO
image_angle = direction;
}
}
*/
#endregion

#region Troca de sprite
if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_player_jumpInicial;
	/*if (sign(vspd) > 0) 
	{
		sprite_index = spr_player_idle
	}*/
}
// FUNFANDO
if hspd ==  0 && place_meeting(x,y+1,obj_wall) 
{	 
	sprite_index = spr_player_idle
}

if hspd != 0 {
	if place_meeting(x,y+1,obj_wall){
		sprite_index = spr_player_running;
	}
}
#endregion
