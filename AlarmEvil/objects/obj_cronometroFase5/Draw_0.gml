/// @description Insert description here
// You can write your code in this editor
draw_set_font(fonteArial)
if seconds >= 10  draw_text (x,y , "0"+ string(minutes) + ":" + string(seconds)) 
else draw_text (x,y , "0"+ string(minutes) + ":" + "0" + string(seconds)) 