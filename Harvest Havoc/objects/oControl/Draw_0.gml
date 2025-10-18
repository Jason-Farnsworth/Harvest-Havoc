draw_set_color(c_white);
draw_set_font(fScore);
draw_set_halign(fa_left);
draw_text(1100, 660, "Score: " + string(global.player_score));
draw_text(1100, 700, "High Score: " + string(global.player_high_score));
var pos_x = 1210
repeat (global.player_lives){
	draw_sprite_ext(sHeart, 0, pos_x, 50, 2, 2, 0, c_white, 1);
	pos_x = pos_x + 65;
}