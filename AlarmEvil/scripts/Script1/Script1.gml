global.fase1 = rm_round1
global.fase2 = rm_round2
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
global.round5 = false
global.pauseReturn = rm_start

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

function danoPlayerArqBoss()
{
	global.hp_width -= (global.hp_maxWid/global.hp) * global.damageEnemy
	global.hpDraw -= global.damageEnemy
	if global.hp_width < 1
	{
	global.hpDraw = 0
	global.hp_width = 0
	room_goto(rm_start)
	}	
}

function darDano()
{
	if global.life > 0
	{	
		if room == rm_finalRound  or room == rm_round5 global.life--
		else global.life -= global.damageEnemy
		if global.life <= 0 
		{
		instance_create_layer(60,150,"instances",obj_youDied)
		if room != rm_round5 and room != rm_finalRound instance_destroy(obj_enemy) 
		else if room = rm_finalRound
		{
			draw_sprite(spr_boss,0,obj_boss.x,obj_boss.y)
			instance_destroy(obj_boss)
			instance_destroy(obj_arqEnemyBoss)
			instance_destroy(obj_bullet)
		}
		else instance_destroy(obj_ArqEnemy)
		instance_destroy(obj_player)
		layer_set_visible(layer_get_id("buracos"),false)
		global.countFaseForTransition = 1
		global.verificarPause = false
		}
	}
}

global.verificarPause = false

global.key_pause = keyboard_check_pressed(vk_escape)