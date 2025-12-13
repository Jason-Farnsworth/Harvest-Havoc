draw_set_color(c_white);
draw_set_font(fScore);
draw_set_halign(fa_center);
if (global.gameMode == "normal" or global.gameMode == "hard"){
	draw_text(580, 660, "Score: " + string(global.player_score));
	draw_text(580, 720, string(global.player_level));
	if (global.gameMode == "normal"){
		draw_text(820, 660, "High Score: " + string(global.normal_player_high_score));
		draw_text(820, 720, "Next Level: " + string(global.normalNextScore));
	}
	if (global.gameMode == "hard"){
		draw_text(820, 660, "High Score: " + string(global.hard_player_high_score));
		draw_text(820, 720, "Next Level: " + string(global.hardNextScore));
	}
}
if (global.gameMode == "time"){
	draw_text(520, 660, "Current Score: " + string(global.player_score));
	draw_text(870, 660, "Points Left: " + string(global.timer_score - global.player_score));
	draw_text(520, 720, "Time: " + global.timer);
	draw_text(870, 720, "Best Time: " + global.time_player_high_score);
}


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
	if (global.gameMode == "time") oSpawnTime.alarm[0] = -1;
	draw_set_font(fGameOver);
	draw_set_halign(fa_center);
	draw_text(670, 200, "GAME OVER");
	draw_text(670, 300, "Press R to Restart");
	if (global.showNewMode){	
		if (global.showNewModeMessage){
			draw_text(670, 50, "New Modes have been unlocked!")
		}
		draw_text(670, 400, "Press D to change Game Mode");
		draw_text(670, 500, "Press M to return to Main Menu");
		/*if (global.gameMode = "time"){
			draw_text(670, 100, "Time: " + global.timer); //Put timer variable here
		}*/
	}
	else{
		draw_text(670, 400, "Press M to return to Main Menu");
	}
}
draw_set_color(c_white);
draw_set_font(fScore);
draw_set_halign(fa_center);

if (timer_win){
	draw_set_color(c_white);
	draw_set_font(fGameOver);
	draw_set_halign(fa_center);
	draw_text(670, 200, "BEST TIME: " + global.timer);
	draw_text(670, 300, "Press R to Restart");
	draw_text(670, 400, "Press D to change Game Mode");
	draw_text(670, 500, "Press M to return to Main Menu");
}
draw_set_color(c_white);
draw_set_font(fScore);
draw_set_halign(fa_center);