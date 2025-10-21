draw_self();
draw_set_font(fText2); //sets font
draw_set_color(c_black);
draw_set_halign(fa_left); //sets alignment
draw_set_valign(fa_top); //sets alignment
draw_text(x, y, "Press Escape to return to menu");

//Reset the alignments to defaults
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
