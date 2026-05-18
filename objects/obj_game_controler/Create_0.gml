var _criar_alarme = room == rm_intrucao1;

bt_subir_contador = noone;
bt_descer_contador = noone;
bt_confirmar_numero = noone;


if(_criar_alarme)
{
	alarm [0] = 60 * 5;
}

hora_de_contar = false;

//INICIANDO AS VARIAVEIS DE CONTROLE DO MINIGAME
mensagem = "";
sem_tucano_cena = 0;
fim_de_minigame = 0;
chutou_tucano = false;

if (room == rm_game1)
{
	global.numero_de_tucanos = 0;
	global.tucanos_criados = 0;
	global.advinhar_tucano = 0;
}