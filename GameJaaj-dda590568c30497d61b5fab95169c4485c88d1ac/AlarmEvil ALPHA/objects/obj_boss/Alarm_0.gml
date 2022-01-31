/// @description Insert description here
// You can write your code in this editor
if global.bala % 2 == 0  instance_create_layer(x,y, "instances", obj_bulletBoss)
else instance_create_layer(x,y, "instances", obj_bulletBoss)	
global.bala++
alarm[0] = 10