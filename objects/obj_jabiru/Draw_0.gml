draw_self();
var _debugar = false;
if (_debugar)
{
	var _debug = "X: " + string(image_xscale) + "\nY: " + string(image_yscale) +
	"\nVel: " + string(hspeed);
	draw_text(x - 15, y - 60, _debug);
}