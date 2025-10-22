draw_set_color(c_white);
draw_set_font(fScore);
draw_set_halign(fa_center);
draw_text(680, 660, "Score: " + string(global.player_score));
draw_text(680, 700, "High Score: " + string(global.player_high_score));
draw_text(680, 740, string(global.player_level));

if (game_over){
	draw_set_color(c_white);
	draw_set_font(fGameOver);
	draw_set_halign(fa_center);
	draw_text(670, 250, "GAME OVER");
	draw_text(670, 350, "Press Space to Restart");
	draw_text(670, 450, "Press Escape to Quit");
}
var pos_x = 1210
repeat (global.player_lives){
	draw_sprite_ext(sHeart_Icon, 0, pos_x, 50, 2, 2, 0, c_white, 1);
	pos_x = pos_x + 65;
}