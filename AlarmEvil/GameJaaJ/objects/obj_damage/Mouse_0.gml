global.speedEnemy++
global.damagePlayer++
if global.faseNumber == 1
{
	global.faseNumber++
	room_goto(round_2)
}
else if global.faseNumber == 2
{
	room_goto(round_3)	
}