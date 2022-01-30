

//digitando o texto
var tamanho_do_texto = string_length(texto)
if (letra < tamanho_do_texto)
{ 
	palavra = string_copy(texto, 1, letra)
	letra++
}
	
draw_set_color(c_white)
draw_set_font(fonteArial)
draw_text_ext(350, room_height - 100 + 10, palavra ,30, 680) 
draw_set_font(-1)