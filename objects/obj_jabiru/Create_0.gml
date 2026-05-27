sou_lendario = false;

if (obj_spawner_tucano.jabiru_lendario == true)
{
	sou_lendario = true;
	//red = irandom_range(0,255);
	//blue = irandom_range(0,255);
	//green = irandom_range(0,255);
	red = 255;
	green = 215;
	blue = 0;
	
	image_blend = make_colour_rgb(red, green, blue);
}


#region ESCALA E VELOCIDADE

escala = 0;

hspeed = irandom_range(1,3); // Gera uma velocidade aleatoria

// Muda a escala de acordo com a velocidade
if (hspeed == 3)
{
	escala = 0.8;
	var _nova_layer = layer_get_id("Inst_jabiru_grande");
	layer_add_instance(_nova_layer, id);
	
}
else if (hspeed == 2)
{
	escala = 0.6;
	var _nova_layer = layer_get_id("Inst_jabiru_medio");
	layer_add_instance(_nova_layer, id);
}
else escala = 0.5;

// Atribui o valor da escala para os parametros X e Y
if(x < room_width)
{
	image_xscale = -escala; // Inverte a direção para a direita
}
else
{	
	hspeed = -hspeed; // Inverte o valor da velocidade horizontal
	image_xscale = escala; // esquerda
}

image_yscale = escala;

#endregion