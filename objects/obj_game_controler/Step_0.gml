sem_tucano_cena = global.numero_de_tucanos - global.tucanos_criados;
fim_de_minigame = ((room == rm_game1 and sem_tucano_cena == 0) and !instance_exists(obj_tucano) and hora_de_contar == false);

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

