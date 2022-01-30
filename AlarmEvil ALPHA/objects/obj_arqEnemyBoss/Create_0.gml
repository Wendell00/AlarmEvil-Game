/// @description Insert description here
// You can write your code in this editor
spd = 4 // Velocidade do player
hspd = 0
vspd = 0

function disparar(){
	if global.municao > 0 
	{
		instance_create_layer(x,y, "instances", obj_bulletArqBoss)
		global.municao++
	}
}
	