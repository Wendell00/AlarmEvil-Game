/// @description Insert description here
// You can write your code in this editor
steps += 1;
if steps >= room_speed
{
steps = 0;
seconds -= 1;

if minutes == 0 and seconds <= 0 
{
instance_destroy(obj_player)
room_goto(rm_transition01)
}

if seconds <= 0
{
seconds = 59;
minutes -= 1;
}
}

