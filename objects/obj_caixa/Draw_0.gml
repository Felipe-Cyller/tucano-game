draw_self()

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(ft_padrao);

//if (text_com_onda == true)
//{
//	text = "[shake]" + text + "[/shake]";
//}
//else
//{
//	text = text_inicial;
//}
draw_text_scribble(x,y,text);

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);