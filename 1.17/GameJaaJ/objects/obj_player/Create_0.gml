count = 1 // contador para o Step/Region IR PARA FASE 2
spd = 4 // Velocidade do player
hspd = 0
vspd = 0

#region VIDA
switch(room) // Evita que a vida resete quando muda de fase
{
	case 0:
		break;
	case 1:
		global.life = 4
		break;
}
#endregion