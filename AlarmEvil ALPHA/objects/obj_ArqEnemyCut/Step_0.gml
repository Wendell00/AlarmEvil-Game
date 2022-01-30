/// @description Insert description here
// You can write your code in this editor
if count < 100 
{
	count++
	x -= 4
}else
{
	count++
}

if count > 500
{
	x += 4
	count++
}

if count > 750
{
	room_goto(rm_transition01)
}