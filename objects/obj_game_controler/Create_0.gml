var _criar_alarme = room == rm_intrucao1;

bt_subir_contador = noone;
bt_descer_contador = noone;

if(_criar_alarme)
{
	alarm [0] = 60 * 5;
}

hora_de_contar = false;