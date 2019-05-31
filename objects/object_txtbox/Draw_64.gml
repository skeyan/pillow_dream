
//draw text box
draw_set_color(c_white);
draw_rectangle(x-5, y-5, x+boxWidth+5, y+boxHeight+5, false);
draw_sprite(spr_txtbox, 0, x, y);


//set font of text
draw_set_font(font_neatpixel);

//set color of text
draw_set_color(c_black);

//draw text and make it so that it prints out character by character

//if character count (keeps track of characters written) hasn't exceeded full number of characters,
//then keep going and keep track using charCount


if(charCount < string_length(text[page]))
{
	charCount += 1;
}
//it prints out one by one until finished
textPart = string_copy(text[page], 1, charCount);

//draws the character's name 
//draw_set_halign(fa_center);
//draw_text(x + boxWidth / 2, y, name);
//draw_set_halign(fa_left);

//draws the actual dialogue text
draw_text_ext(x+xBuffer, y+yBuffer, textPart, 45, boxWidth - 2*xBuffer);