
//draw text box

//set font of text
draw_set_font(font_expopixel);

//set color of text
draw_set_alpha(1); //resets after the fade-in from instructions
draw_set_color(c_white);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);


//draw text and make it so that it prints out character by character

//if character count (keeps track of characters written) hasn't exceeded full number of characters,
//then keep going and keep track using charCount
if(echarCount < string_length(etext[epage]))
{
	echarCount += 1;
}
//it prints out one by one until finished
etextPart = string_copy(etext[epage], 1, echarCount);

//draws the actual dialogue text
draw_text_ext(x, y+estringHeight, etextPart, 80, eboxWidth);


