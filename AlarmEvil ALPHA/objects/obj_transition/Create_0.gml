
alphavar = 0
alarm[1] = 60*4

if global.countFaseForTransition == 1 
{
	sprfase = spr_textoFASE1
	audio_play_sound(snd_1,10, true)
	global.countFaseForTransition++
}
else if global.countFaseForTransition == 2
{
	sprfase = spr_textoFASE2
	global.life++
	global.municao = 10
	global.countFaseForTransition++	
}
else if global.countFaseForTransition == 3
{
	sprfase = spr_textoFASE3
	global.life++
	global.municao = 10
	global.countFaseForTransition++	
}
else if global.countFaseForTransition == 4
{
	sprfase = spr_textoFASE4x
	if global.life < 8 global.life++
	global.municao = 10
	global.countFaseForTransition++	
}
else if global.countFaseForTransition == 5
{
	sprfase = spr_textoFASE5
	global.life = 8
	global.municao = 10
	global.countFaseForTransition++	
}
else if global.countFaseForTransition >= 6
{
	sprfase = spr_textoTrueFase
	global.life = 8
	global.municao = infinity
	global.countFaseForTransition++	
}