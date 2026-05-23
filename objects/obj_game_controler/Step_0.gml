if (global.confirmar_saida == true and confirmou_saida == false)
{
	instance_destroy(obj_caixa);
	sprite_set_speed(spr_background, 0, spritespeed_framespersecond);
		
	bt_cancelar = instance_create_layer((room_width / 2) - 70, (room_height / 2) + 40,"Inst_botoes_confirmacao", obj_caixa);
	bt_sair = instance_create_layer((room_width / 2) + 70, (room_height / 2) + 40,"Inst_botoes_confirmacao", obj_caixa);

	
	bt_cancelar.text = "NÃO";
	bt_cancelar.cod_id = 9;
	
	bt_sair.text = "SIM";
	bt_sair.image_blend = make_colour_rgb(255, 101, 101);
	bt_sair.image_alpha = make_colour_hsv(0, 60, 100);
	bt_sair.cod_id = 8;
	
	global.confirmar_saida = false;
	aparecer_mensagem = true;
	
	//exit;
}


sem_tucano_cena = global.numero_de_jabirus - global.jabirus_criados;
fim_de_minigame = ((room == rm_game1 and sem_tucano_cena == 0) and !instance_exists(obj_jabiru) and hora_de_contar == false);

// MINIGAME TUCANO
if (fim_de_minigame == true) // verdadeira
{
	//Mensagem de debug
    //get_integer_async("Quantos tucanos passaram?", 0);
	bt_subir_contador = instance_create_layer(428, 224, "Inst_botoes", obj_contar);
	bt_descer_contador = instance_create_layer(428, 264, "Inst_botoes", obj_contar);
	bt_confirmar_numero = instance_create_layer(530,244,"Inst_botoes", obj_caixa);
	
	//botão confirmar atribuindo as variaveis
	bt_confirmar_numero.text = "CONFIRMAR";
	bt_confirmar_numero.image_blend = make_colour_rgb(50, 255, 20);
	bt_confirmar_numero.cod_id = 7;
	
	//rotacionar o botão para 'baixo'
	bt_descer_contador.image_yscale = -1;
	
	
	hora_de_contar = true; //transforam a condição em falsa
}

