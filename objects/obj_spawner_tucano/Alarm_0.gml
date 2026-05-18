var _random_x = irandom(1);
var _posx = 0;
var _posy = irandom_range(10, 300)
if (_random_x == 0)
{
	_posx = -96;
}
else
{
	_posx = 736;
}

var _criar_tucano = instance_create_layer(_posx,_posy, "Inst_tucanos", obj_tucano);

show_debug_message("Criados: " + string(global.tucanos_criados));
