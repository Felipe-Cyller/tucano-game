randomize();

var _random_x = irandom(1);
var _posx = 0;
var _posy = irandom_range(10, 224);
var _jabiru_lendario = irandom_range(0, 200);

if (_random_x == 0)
{
	_posx = -96;
}
else
{
	_posx = 736;
}
var _camada = "Inst_jabiru_pequeno";
if (_jabiru_lendario <= 0)
{
	jabiru_lendario = true;
	var _criar_tucano = instance_create_layer(_posx, _posy, _camada, obj_jabiru);
}

else
{
	jabiru_lendario = false;
	var _criar_tucano = instance_create_layer(_posx,_posy, _camada, obj_jabiru);
}
//show_debug_message("Criados: " + string(global.jabirus_criados));
