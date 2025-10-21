draw_self();
draw_set_font(fScore); //sets font
draw_set_color(c_black);
draw_set_halign(fa_left); //sets alignment
draw_set_valign(fa_middle); //sets alignment
draw_text(x, y, helperText);

//Reset the alignments to defaults
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);