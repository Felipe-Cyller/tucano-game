#region DECLARANDO AS VÁRIAVEIS

var _colisao = collision_rectangle(x + 16, y + 16, x - 16, y - 16, obj_cursor, 0 ,1);
var _clique_esq = mouse_check_button_pressed(mb_left);
var _cima = keyboard_check_released(vk_up);
var _baixo = keyboard_check_released(vk_down);

// Checando se o valor tem que subir ou descer
var _subir_contador = (((_cima and cod_id == 0) and global.advinhar_jabiru < 50) or ((_colisao and _clique_esq) and (global.advinhar_jabiru < 50 and cod_id == 0)));
var _descer_contador = (((_baixo and cod_id == 1) and global.advinhar_jabiru > 0) or ((_colisao and _clique_esq) and (global.advinhar_jabiru > 0 and cod_id == 1)));

#endregion

#region SUBIR OU DESCER CONTADOR

if (_subir_contador)
{
	global.advinhar_jabiru++;
	image_yscale = 0.8;
	image_index = 1;
}
else if (_descer_contador)
{
	global.advinhar_jabiru--;
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

#endregion