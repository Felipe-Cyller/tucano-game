var _fim_de_minigame = global.numero_de_tucanos - global.tucanos_criados;

// MINIGAME TUCANO
if((room == rm_game1 && _fim_de_minigame == 0) and !instance_exists(obj_tucano) and hora_de_contar == false)
{
	//Mensagem de debug
    //get_integer_async("Quantos tucanos passaram?", 0);
	bt_subir_contador = instance_create_layer(448, 224, "Inst_botoes", obj_contar);
	bt_descer_contador = instance_create_layer(448, 264, "Inst_botoes", obj_contar);
	
	bt_descer_contador.image_yscale = -1;
	
	hora_de_contar = true;
	
	
}