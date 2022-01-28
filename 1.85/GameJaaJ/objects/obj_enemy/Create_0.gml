underworldif = 1
boladeFogo = true
contadorAlarm = 1
contadorAlarm2 = 0
contadorDanoInicial = 0
count = 1
spd = 6
global.hp = 3
global.hp_width = 80;
global.hp_maxWid = global.hp_width;
hp_height = 12;
hp_x = (1024/2) - (global.hp_width/2);
underworld = 1
metadeVida = global.hp_width / 2
contadorAlarm3 = 1 
switch(room)
{
	
	case global.numberRound2:
		alarm[2] = 50
		break;
	case global.numberRoom1:
		break;
	case global.numberRound3:	
		alarm[2] = 50
		alarm[4] = 60
		
	
}

/* criar atribuição de elementos a cada round, ex = [ranged attack se o player completar o primeiro room]