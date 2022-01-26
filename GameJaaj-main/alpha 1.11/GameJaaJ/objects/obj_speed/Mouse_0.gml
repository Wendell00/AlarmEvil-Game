/// @description Insert description here
// You can write your code in this editor
global.speedPlayer++
global.damageEnemy++
if global.faseNumber == 1
{
	global.faseNumber++
	room_goto(round_2)
}
else if global.faseNumber == 2
{
	room_goto(round_3)	
}