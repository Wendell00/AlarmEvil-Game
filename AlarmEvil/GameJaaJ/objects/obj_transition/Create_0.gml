/// @description Insert description here
// You can write your code in this editor
alphavar = 0
alarm[1] = 60*4

if global.countFaseForTransition == 1 
{
	sprfase = spr_textoFASE1
	global.countFaseForTransition++
}
else if global.countFaseForTransition == 2
{
	sprfase = spr_textoFASE2
	global.countFaseForTransition++	
}
else if global.countFaseForTransition == 3
{
	sprfase = spr_textoFASE3
	global.countFaseForTransition++	
}
else if global.countFaseForTransition >= 4
{
	sprfase = spr_textoFASE_4
	global.countFaseForTransition++	
}