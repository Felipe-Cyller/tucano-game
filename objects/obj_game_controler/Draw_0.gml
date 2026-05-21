var _mostrar_texto = false;



if (hora_de_contar == true and chutou_tucano == false)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(ft_titulo);
	
	draw_text_scribble(378, 244, string(global.advinhar_jabiru));
	
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
}


if(chutou_tucano == true)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(ft_titulo);
	
	var _condicao_vitoria = global.advinhar_jabiru - global.numero_de_jabirus;
	
	if (_condicao_vitoria != 0)
	{
		var _text_completo = 
		text = "A resposta era: " + string(global.numero_de_jabirus);
		draw_set_font(ft_perdeu);
		mensagem = "[shake][rainbow]VOCÊ PERDEU![/rainbow][/shake]\n" + text;
		draw_set_font(-1);
	}
	else
	{
		mensagem = "VOCÊ GANHOU!";
	}
	draw_text_scribble(room_width / 2,room_height / 2, mensagem);
	
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_set_font(-1);
	
}
//Efeitos de digitação
var _efeito_rainbow_e_wave_start = "[rainbow][wave]";
var _efeito_rainbow_e_wave_end = "[/wave][/rainbow]";

var _titulo = "CRÉDITOS";
var _nome = "[rainbow]Desenvolvido por Felipe Cyller Santana Santos[/rainbow]";
var _artes = "Artes utilizadas no jogo disponível em:\n"
+ "https://trashboat93.itch.io/jungle-background-parallax\n" +
"https://br.vexels.com/png-svg/previsualizar/145888/ilustracao-de-tucano";



if(room == rm_creditos)
{
	_mostrar_texto = true;
}

if(_mostrar_texto == true)
{
	
	//draw
	//draw_text_scribble(x,y,)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(ft_titulo);
	
	draw_text_scribble(x,y + 60,_titulo);
	draw_set_font(-1);
	
	draw_set_font(ft_padrao);
	
	draw_text_scribble(x,y + 150,_artes);
	draw_text_scribble(x,y + 300,_nome);
	
	draw_set_font(-1);
	
	draw_set_halign(-1);
	draw_set_valign(-1);
	
	
	
}