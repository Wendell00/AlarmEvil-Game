if place_meeting(x,y,obj_player) // Se colidir com o player o buraco é Destruido
{
	instance_destroy()	
}

if place_meeting(x,y,obj_bulletPlayer) //Se colidir com o tiro do player o buraco é destruido
{
	instance_destroy(obj_bulletPlayer)
}