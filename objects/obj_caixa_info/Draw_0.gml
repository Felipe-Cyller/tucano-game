draw_self()

draw_set_font(ft_titulo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_set_colour(c_black);



if(room == rm_intrucao1)
{
	
	text = "[rainbow]Prepare-se! Você terá que contar todos\nos tucanos que aparecerem" +
	" na tela.\nAcerte a quantidade exata para cumprir\no desafio.[/rainbow]";
}

draw_text_scribble(x,y - 100, titulo);


draw_set_font(-1);
draw_set_font(ft_padrao);

draw_text_scribble(x,y, text);

//draw_set_colour(-1);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
