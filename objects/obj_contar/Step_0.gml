var _colisao = collision_rectangle(x + 16, y + 16, x - 16, y - 16, obj_cursor, 0 ,1);
var _clique_esq = mouse_check_button_pressed(mb_left);

if(_colisao and _clique_esq)
{
	image_index = 1;
	image_xscale = 0.8;
	
	
	if(image_yscale == -1 and global.advinhar_jabiru > 0)
	{
		image_yscale = -0.8;
		global.advinhar_jabiru--;
	}
	if (image_yscale == 1 and global.advinhar_jabiru < 50)
	{
		image_yscale = 0.8;
		global.advinhar_jabiru++;
	}
}
else
{
	image_index = 0;
	image_xscale = 1;
	
	if (image_yscale > 0)
	{
		image_yscale = 1;	
	}
	else
	{
		image_yscale = -1;
	}
}
show_debug_message(global.advinhar_jabiru);