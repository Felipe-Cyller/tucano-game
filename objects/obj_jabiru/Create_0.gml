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




if(x < room_width)
{
	var _velocidade_horizontal = irandom_range(1,3);
	hspeed = _velocidade_horizontal;
	image_xscale = -0.5;
	image_yscale = 0.5;
}
else
{
	var _velocidade_horizontal = irandom_range(-1, -3);
	hspeed = _velocidade_horizontal;
	image_xscale = 0.5;
	image_yscale = 0.5;
}