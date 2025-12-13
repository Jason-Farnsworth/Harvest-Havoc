draw_set_font(fScore); //sets font
draw_set_color(c_black);
draw_set_halign(fa_center); //sets alignment
draw_set_valign(fa_middle); //sets alignment
draw_text(x, y, modeDesc);

//Reset the alignments to defaults
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);