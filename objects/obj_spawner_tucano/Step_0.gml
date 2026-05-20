if(alarme_rodou == false and (global.jabirus_criados < global.numero_de_jabirus))
{
	alarm[0] = 60 * 0.8;
	
	alarme_rodou = true;
	//show_debug_message("Rodou");
	show_debug_message("Numero de tucanos: " + string(global.numero_de_jabirus));
	global.jabirus_criados+=1;
}

if(alarm[0] <= 0)
{
	alarme_rodou = false;
}

