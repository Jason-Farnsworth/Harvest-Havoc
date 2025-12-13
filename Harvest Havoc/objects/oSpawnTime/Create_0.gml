y_coord = -30;
spawnTimer = 0;
//spawnTimer_2 = 30; //spawning obstacles will be offset by 30 seconds when compared to food spawn
//spawnTimer_3 = 50; //spawning powerups will be offset by 50 seconds when compared to food spawn
food = [oPear, oPepper, oPumpkin];
obstacles = [oWasp, oSickle, oSquirrel]
powerups = [oHeart, oBoots, oGlove, oBoots, oGlove, oBoots, oGlove];
//powerups2 = [oHeart, oGlove, oBasket, oBasket, oBoots, oGlove, oBoots, oGlove, oGlove];
//powerups = [oGlove, oGlove, oGlove];
list_length_1 = array_length(food);
list_length_2 = array_length(powerups);
//list_length_3 = array_length(powerups2);
global.grav = 4;
global.display_text = false;
global.text_timer = 30;
global.GloveHelp = false;
global.nextScore = 0;
global.timer_min = 0;
global.timer_sec = 0;
global.timer_mil = 0; //Millisecond
alarm[0] = 6; //Runs every 6 frames
//global.timer = "";

//Level 5 spawn rates
spawnTimerCutoff_Food_5 = 15;
spawnTimerCutoff_Obstacles_5 = 15;
spawnTimerCutoff_Power = 400;
