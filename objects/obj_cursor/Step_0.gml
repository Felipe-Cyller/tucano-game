// Para a sprite tornar-se o cursor
x = mouse_x;
y = mouse_y;

if (mouse_check_button(mb_left))
{
	image_xscale = 0.9;
	image_yscale = 0.9;
}
else
{
	image_xscale = 1;
	image_yscale = 1;
}