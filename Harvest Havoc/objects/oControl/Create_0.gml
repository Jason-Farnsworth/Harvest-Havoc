randomize();
ini_open("savedata.ini");
game_over = false;
pause = false;
timer_win = false;
timer_settings = false;
global.timer_end = false;
objects = [oBasket, oBoots, oGlove, oHeart, oWasp, oPear, oPepper, oPumpkin, oSickle, oSquirrel];

global.player_score = 0;

if (global.gameMode == "normal") {
	global.normal_player_high_score = ini_read_real("save1", "High Score", 500000);
	global.player_lives = 3;
}
if (global.gameMode == "hard"){
	global.hard_player_high_score = ini_read_real("save2", "Hard High Score", 500000);
	global.player_lives = 2;
}
if (global.gameMode == "time"){
	/*global.min_player_high_score = ini_read_real("save3", "Best Min Time", 0);
	global.sec_player_high_score = ini_read_real("save4", "Best Sec Time", 0);
	global.mil_player_high_score = ini_read_real("save5", "Best Mil Time", 0);*/
	global.time_player_high_score = ini_read_real("save3", "Time High Score", 250000);
	global.player_lives = 3;
	//global.time_player_high_score = string(global.min_player_high_score) + ":" + "0" + string(global.sec_player_high_score) + "." + string(global.mil_player_high_score);
}
if (global.gameMode == "survival"){
	global.survival_player_high_score = ini_read_real("save4", "Survival High Score", 500000);
	global.player_lives = 3;
}
//global.player_lives = 3;
global.player_level = "Level 1";
global.score_text = "";
//global.timer_score = 10000;
screen_create = false;
ini_close();
//oMenuControl.showNewModeMessage = false;
//oMenuControl.showNewMode = false;
//switch50k = false;

