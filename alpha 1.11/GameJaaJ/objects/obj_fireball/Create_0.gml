

// aleatoriazar a criação da fireball enquanto estiver espaço livre no x e y
do
{
x=random(room_width)
y=random(room_height)
}

until place_free(x,y)
