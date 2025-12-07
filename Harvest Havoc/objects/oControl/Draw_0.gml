draw_set_color(c_white);
draw_set_font(fScore);
draw_set_halign(fa_center);
draw_text(580, 660, "Score: " + string(global.player_score));
draw_text(580, 720, string(global.player_level));
draw_text(820, 660, "High Score: " + string(global.player_high_score));
draw_text(820, 720, "Next Level: " + string(global.nextScore));

if (pause){
	draw_set_color(c_white);
	draw_set_font(fGameOver);
	draw_set_halign(fa_center);
	draw_text(670, 250, "Press R to Resume");
	draw_text(670, 350, "Press E to reset High Score");
	draw_text(670, 450, "Press M to return to Main Menu");
}
draw_set_color(c_white);
draw_set_font(fScore);
draw_set_halign(fa_center);

if (game_over){
	draw_set_color(c_white);
	draw_set_font(fGameOver);
	draw_set_halign(fa_center);
	draw_text(670, 250, "GAME OVER");
	draw_text(670, 350, "Press R to Restart");
	draw_text(670, 450, "Press Escape to Quit");
}
draw_set_color(c_white);
draw_set_font(fScore);
draw_set_halign(fa_center);