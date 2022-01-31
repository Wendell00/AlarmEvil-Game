//tremer a tela
view_xport[0] = irandom_range(-shake, shake)
view_yport[0] = irandom_range(-shake, shake)


shake = lerp(shake, 0, .04) // valor 3 é a constante da velocidade até percorrer o valor 2 designado (0) 

// se o objeto shake for menor que 0, ele deixa de existir
if (shake <= 1) instance_destroy()

