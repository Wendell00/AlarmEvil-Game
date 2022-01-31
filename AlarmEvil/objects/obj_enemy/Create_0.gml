underworldif = 1
contadorAlarm = 1
contadorAlarm2 = 0
contadorDanoInicial = 0
count = 1
spd = 6
global.hp = 35
global.hpDraw = global.hp
global.hp_width = 80;
global.hp_maxWid = global.hp_width;
hp_height = 12;
underworld = 1
metadeVida = global.hp_width / 2 
switch(room)
{
	case rm_round1:
		break;
	case rm_round2:
		alarm[2] = 50
		break;
	default:	
		alarm[2] = 50
		alarm[3] = 60
		break;
}

pontoPlayer = true
pontoEnemy = false

/* criar atribuição de elementos a cada round, ex = [ranged attack se o player completar o primeiro room]