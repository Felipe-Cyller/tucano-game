if (((keyboard_check_released(vk_up)) and cod_id == 0) and global.advinhar_jabiru < 50)
{
	image_yscale = 0.8;
	image_index = 1;
}
else if (((keyboard_check_released(vk_down)) and cod_id == 1) and global.advinhar_jabiru > 0)
{
	image_yscale = -0.8;
	image_index = 1;
}
else
{
	if (cod_id >= 1) 
	{
		cod_id = 1;
		image_yscale = -1;
	}
	else
	{
		cod_id = 0;
		image_yscale = 1;
	}
	image_index = 0;
}
