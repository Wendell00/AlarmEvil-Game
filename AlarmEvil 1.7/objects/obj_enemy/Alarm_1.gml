switch (room)
{
	case global.numberRound2:
		switch(contadorAlarm)
		{
			case 1:
				instance_destroy(buraco)
				contadorAlarm = 2
				alarm[1] = 60*3
				break;
			case 2:
				instance_destroy(buraco2)
				alarm[1] = 60*3
				contadorAlarm = 3
				break;
			case 3:
				instance_destroy(buraco3)
				alarm[1] = 60*3
				contadorAlarm = 4
				break;
			case 4:
				instance_destroy(buraco4)
				alarm[1] = 60*3
				contadorAlarm = 5
				break;
			case 5:
				instance_destroy(buraco5)
				alarm[1] = 60*3
				contadorAlarm = 6
				break;
			case 6:
				instance_destroy(buraco6)
				alarm[1] = 60*3
				contadorAlarm = 7
				break;
			case 7:
				instance_destroy(buraco7)
				alarm[1] = 60*3
				contadorAlarm = 8
				break;
			case 8:
				instance_destroy(buraco8)
				alarm[1] = 60*3
				contadorAlarm = 1
				break;
		}
		break;
	default:
		switch(contadorAlarm)
		{
			case 1:
				instance_destroy(buraco)
				contadorAlarm = 2
				alarm[1] = 60*3
				break;
			case 2:
				instance_destroy(buraco2)
				alarm[1] = 60*3
				contadorAlarm = 3
				break;
			case 3:
				instance_destroy(buraco3)
				alarm[1] = 60*3
				contadorAlarm = 4
				break;
			case 4:
				instance_destroy(buraco4)
				alarm[1] = 60*3
				contadorAlarm = 5
				break;
			case 5:
				instance_destroy(buraco5)
				alarm[1] = 60*3
				contadorAlarm = 1
				break;
		}
}