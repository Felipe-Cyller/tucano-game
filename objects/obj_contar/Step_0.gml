var _colisao = collision_rectangle(x + 16, y + 16, x - 16, y - 16, obj_cursor, 0 ,1);
var _clique_esq = mouse_check_button_pressed(mb_left);

if(_colisao and _clique_esq)
{
	if(image_yscale == -1 and global.advinhar_tucano > 0)
	{
		global.advinhar_tucano--;
	}
	if (image_yscale == 1 and global.advinhar_tucano < 50)
	{
		global.advinhar_tucano++;
	}
}

show_debug_message(global.advinhar_tucano);