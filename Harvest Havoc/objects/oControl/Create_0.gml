randomize();
ini_open("savedata.ini");
window_set_caption("Harvest Havoc");
game_over = false;
pause = false;
objects = [oBasket, oBoots, oGlove, oHeart, oWasp, oPear, oPepper, oPumpkin, oSickle, oSquirrel];
global.player_lives = 3;
global.player_score = 0;
global.player_high_score = ini_read_real("save1", "High Score", 0);
global.player_level = "Level 1";
global.score_text = "";
screen_create = false;
ini_close();

