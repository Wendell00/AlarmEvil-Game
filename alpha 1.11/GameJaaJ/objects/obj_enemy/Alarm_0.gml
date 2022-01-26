underworldif = 1
switch (room)
{
	case 0:
		switch(underworld){
			case 1:
				buraco = instance_create_depth(x+70,y,-1, obj_underworldHole)
				underworld = 2
				if contadorAlarm2 == 0 alarm[1] = 60*24
				break;
			case 2:
				buraco2 = instance_create_depth(x+70,y,-1, obj_underworldHole)
				underworld = 3
				break;
			case 3:
				buraco3 = instance_create_depth(x+70,y,-1, obj_underworldHole)
				underworld = 4
				break;
			case 4:
				buraco4 = instance_create_depth(x+70,y,-1, obj_underworldHole)
				underworld = 5
				break;
			case 5:
				buraco5 = instance_create_depth(x+70,y,-1, obj_underworldHole)
				underworld = 6
				break;
			case 6:
				buraco6 = instance_create_depth(x+70,y,-1, obj_underworldHole)
				underworld = 7
				break;
			case 7:
				buraco7 = instance_create_depth(x+70,y,-1, obj_underworldHole)
				underworld = 8
				break;
			case 8:
				buraco8 = instance_create_depth(x+70,y,-1, obj_underworldHole)
				underworld = 1
				contadorAlarm2 = 1
				break;
		}
		if contadorAlarm2 == 1
		{
			if !instance_exists(buraco) buraco = instance_create_depth(randx,randy,-1, obj_underworldHole)
			if !instance_exists(buraco2) buraco2 = instance_create_depth(randx,randy,-1, obj_underworldHole)
			if !instance_exists(buraco3) buraco3 = instance_create_depth(randx,randy,-1, obj_underworldHole)
			if !instance_exists(buraco4) buraco4 = instance_create_depth(randx,randy,-1, obj_underworldHole)
			if !instance_exists(buraco5) buraco5 = instance_create_depth(randx,randy,-1, obj_underworldHole)
			if !instance_exists(buraco6) buraco6 = instance_create_depth(randx,randy,-1, obj_underworldHole)
			if !instance_exists(buraco7) buraco7 = instance_create_depth(randx,randy,-1, obj_underworldHole)
			if !instance_exists(buraco8) buraco8 = instance_create_depth(randx,randy,-1, obj_underworldHole)
		}
		break;
		case 1:
			switch(underworld){
			case 1:
				buraco = instance_create_depth(x,y,-1, obj_underworldHole)
				underworld = 2
				if contadorAlarm2 == 0 alarm[1] = 60*15
				break;
			case 2:
				buraco2 = instance_create_depth(x,y,-1, obj_underworldHole)
				underworld = 3
				break;
			case 3:
				buraco3 = instance_create_depth(x,y,-1, obj_underworldHole)
				underworld = 4
				break;
			case 4:
				buraco4 = instance_create_depth(x,y,-1, obj_underworldHole)
				underworld = 5
				break;
			case 5:
				buraco5 = instance_create_depth(x,y,-1, obj_underworldHole)
				underworld = 1
				contadorAlarm2 = 1
				break;
		}
		if contadorAlarm2 == 1
		{
			if !instance_exists(buraco) buraco = instance_create_depth(randx,randy,-1, obj_underworldHole)
			if !instance_exists(buraco2) buraco2 = instance_create_depth(randx,randy,-1, obj_underworldHole)
			if !instance_exists(buraco3) buraco3 = instance_create_depth(randx,randy,-1, obj_underworldHole)
			if !instance_exists(buraco4) buraco4 = instance_create_depth(randx,randy,-1, obj_underworldHole)
			if !instance_exists(buraco5) buraco5 = instance_create_depth(randx,randy,-1, obj_underworldHole)
		}
		break;			
}

