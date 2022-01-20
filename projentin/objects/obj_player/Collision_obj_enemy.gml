/// @description Insert description here
// You can write your code in this editor
with(other){
	instance_destroy()
	global.life--;
	if global.life < 1
	{
	game_restart()
	}
}