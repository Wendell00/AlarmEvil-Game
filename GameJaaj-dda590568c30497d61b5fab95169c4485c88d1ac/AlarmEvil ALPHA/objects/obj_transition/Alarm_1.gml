
if global.countFaseForTransition == 2
{
	room_goto(rm_round1)
}
if global.countFaseForTransition == 3
{
	room_goto(rm_round2)
}
if global.countFaseForTransition == 4
{
	room_goto(rm_round3)
}
if global.countFaseForTransition == 5
{
	room_goto(rm_round4)
}
if global.countFaseForTransition == 6
{
	global.round5 = true
	room_goto(rm_round5)
}
if global.countFaseForTransition >= 7
{	
	global.round5 = false
	room_goto(rm_finalRound)
}