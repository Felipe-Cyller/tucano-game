#region DECLARANDO VARIÁVEIS

// variavel de colisao
var _colisao = collision_rectangle(x + 64, y + 28, x - 64, y - 28, obj_cursor, 0, 1);
var _clicou_bte = mouse_check_button_pressed(mb_left);

#endregion

#region CHECANDO COLISÃO

// Chegando colisão, muda a escala e a cor quando
// a colisão for verdadeira
if(_colisao)
{
	show_debug_message("ESTOU DENTRO DO " + string(cod_id));
	show_debug_message("Teste");
	show_debug_message("Teste");
	//Mudando a escala e cor
	image_xscale = 0.97;
	image_yscale = 0.97;
	image_index = 1;
	
	text_com_onda = true;
	
}

else
{
	//show_debug_message("ESTOU FORA");
	
	image_xscale = 1;
	image_yscale = 1;
	image_index = 0;
	
	
	text_com_onda = false;
}

if (_colisao and _clicou_bte)
{
	if (cod_id == 1)
	{
		//show_debug_message("Meu Código é " + string(cod_id));
		
		//Minigame do tucano
		room_goto(rm_intrucao1);
	}
	
	if (cod_id == 2)
	{
		room_goto(rm_creditos);
	}
	
	if (cod_id == 3)
	{
		room_goto(rm_sobre);
	}
	
	if (cod_id == 4)
	{
		global.confirmar_saida = true;
		//game_end();
	}
	
	// Butão avançar fase
	if (cod_id == 5)
	{
		room_goto(rm_game1);
	}
	
	if (cod_id	== 6)
	{
		room_goto(rm_menu);
	}
	
	if (cod_id == 7)
	{
		obj_game_controler.chutou_tucano = true;
		instance_destroy(obj_caixa);
		instance_destroy(obj_contar);
		var _condicao_vitoria = global.advinhar_jabiru - global.numero_de_jabirus;
		
		var _bt_voltar_ao_menu = instance_create_layer((room_width / 2) - 100, (room_height / 2) + 100,"Inst_botoes",obj_caixa);
		var _bt_jogar_novamente = instance_create_layer((room_width / 2) + 100, (room_height / 2) + 100,"Inst_botoes",obj_caixa);
	
		_bt_voltar_ao_menu.text = "MENU";
		_bt_voltar_ao_menu.cod_id = 6;
		_bt_jogar_novamente.text = "RECOMEÇAR";
		_bt_jogar_novamente.cod_id = 5;
		
	}
	if (cod_id == 8)
	{
		game_end();
	}
	//show_message("Meu Código é " + string(cod_id));
	if (cod_id == 9)
	{
		obj_game_controler.aparecer_mensagem = false;
		
		var _apagar_bt_cancelar = obj_caixa.cod_id = 9;
		var _apagar_bt_sair = obj_caixa.cod_id = 8;
		
		sprite_set_speed(spr_background, 24, spritespeed_framespersecond);
		
		instance_destroy(_apagar_bt_cancelar);
		instance_destroy(_apagar_bt_sair);
		
		var _x = 512;
		var _y = 64;
		
		bt_jogar = instance_create_layer( 512, 96, "Inst_botoes", obj_caixa);
		bt_credito = instance_create_layer(512, 96 + _y, "Inst_botoes", obj_caixa);
		bt_sobre = instance_create_layer(512, 96 + (_y * 2), "Inst_botoes", obj_caixa);
		bt_sair = instance_create_layer(512, 96 + (_y * 3), "Inst_botoes", obj_caixa);
		
		bt_jogar.cod_id = 1;
		bt_jogar.text = "JOGAR";
		
		bt_credito.cod_id = 2;
		bt_credito.text = "CRÉDITOS";
		
		bt_sobre.cod_id = 3;
		bt_sobre.text = "SOBRE";
		
		bt_sair.cod_id = 4;
		bt_sair.text = "SAIR";
		bt_sair.image_blend = make_colour_rgb(255, 101, 101);
		bt_sair.image_alpha = make_colour_hsv(0, 60, 100);
	}
}
#endregion