var _criar_alarme = room == rm_intrucao1;

bt_subir_contador = noone;
bt_descer_contador = noone;
bt_confirmar_numero = noone;
bt_criar_sombra = noone;

bt_cancelar = noone;
bt_sair = noone;

sprite_set_speed(spr_background, 24, spritespeed_framespersecond);
velocidade = sprite_get_speed(spr_background);
confirmou_saida = false;

if(_criar_alarme)
{
	alarm [0] = 60 * 5;
}

hora_de_contar = false;

//INICIANDO AS VARIAVEIS DE CONTROLE DO MINIGAME
mensagem = "";
text = "";

sem_tucano_cena = 0;
fim_de_minigame = 0;
chutou_tucano = false;

if (room == rm_game1)
{
	global.numero_de_jabirus = 0;
	global.jabirus_criados = 0;
	global.advinhar_jabiru = 0;
}

aparecer_mensagem = false;
