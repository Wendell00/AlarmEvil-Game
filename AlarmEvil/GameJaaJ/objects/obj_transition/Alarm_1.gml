/// @description Insert description here
// You can write your code in this editor
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
if global.countFaseForTransition >= 5
{
	room_goto(rm_round4)
}