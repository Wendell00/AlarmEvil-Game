global.fase1 = rm_round1
global.fase2 = rm_round2
global.fase3 = rm_round3
global.firstTime = true
global.countFaseForTransition = 1
global.speedEnemy = 1
global.speedPlayer = 1
global.damageEnemy = 1
global.damagePlayer = 1
global.municao = 10
global.hp = 10
global.hpDraw = global.hp
global.hp_width = 80;

function danoPlayerARQ()
{
	global.hp_width -= (global.hp_maxWid/global.hp) * global.damagePlayer
	global.hpDraw -= global.damagePlayer
}


function danoPlayer()
{
	global.hp_width -= (global.hp_maxWid/global.hp) * global.damagePlayer
	global.hpDraw -= global.damagePlayer
	if global.hp_width < 1
	{
	global.hpDraw = 0
	global.hp_width = 0
	}	
}

function darDano()
{
	if global.life > 0
	{	
		global.life -= global.damageEnemy
		if global.life <= 0 
		{
		instance_create_layer(60,150,"instances",obj_youDied)
		instance_destroy(obj_player)
		if room != rm_round5 instance_destroy(obj_enemy)
		else instance_destroy(obj_ArqEnemy)
		layer_set_visible(layer_get_id("buracos"),false)
		global.countFaseForTransition = 1
		}
	}
}

