if (((keyboard_check_pressed(vk_up)) and cod == 0) and global.advinhar_jabiru < 50)
{
	global.advinhar_jabiru += 1;
	image_yscale = 0.8;
	image_index = 1;
}
else if (((keyboard_check_pressed(vk_down)) and cod == 1) and global.advinhar_jabiru > 0)
{
	global.advinhar_jabiru -= 1;
	image_yscale = -0.8;
	image_index = 1;
}
else
{
	if (cod >= 1) 
	{
		cod = 1;
		image_yscale = -1;
	}
	else
	{
		cod = 0;
		image_yscale = 1;
	}
	image_index = 0;
}
