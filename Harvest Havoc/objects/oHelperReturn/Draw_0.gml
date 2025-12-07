draw_self();
draw_set_font(fText2); //sets font
draw_set_color(c_black);
draw_set_halign(fa_center); //sets alignment
draw_set_valign(fa_middle); //sets alignment
draw_text(x, y, "Click here to \nreturn to Menu");

//Reset the alignments to defaults
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
