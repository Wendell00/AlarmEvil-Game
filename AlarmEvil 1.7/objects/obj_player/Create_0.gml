count = 1 // contador para o Step/Region IR PARA FASE 2
spd = 4 // Velocidade do player
hspd = 0
vspd = 0

global.numberRoom1 = global.fase1
global.numberRound2 = global.fase2
global.numberRound3 = global.fase3
#region VIDA
switch(room) // Evita que a vida resete quando muda de fase
{
	case global.numberRoom1:
		global.life = 6
		break;
	default:
		alarm[1] = 60*3
		break;
}
#endregion

function disparar(){
	if global.municao > 0 
	{
		instance_create_layer(x,y, "instances", obj_bulletPlayer)
		global.municao--
	}
}
	