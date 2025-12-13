y_coord = -30;
spawnTimer = 0;
//spawnTimer_2 = 30; //spawning obstacles will be offset by 30 seconds when compared to food spawn
//spawnTimer_3 = 50; //spawning powerups will be offset by 50 seconds when compared to food spawn
food = [oPear, oPepper, oPumpkin];
obstacles = [oWasp, oSickle, oSquirrel]
powerups = [oBoots, oGlove, oBasket, oBoots, oGlove, oBoots, oGlove];
powerups2 = [oGlove, oBasket, oBasket, oBoots, oGlove, oBoots, oGlove, oGlove];
//powerups = [oGlove, oGlove, oGlove];
list_length_1 = array_length(food)
list_length_2 = array_length(powerups)
global.grav = 2;
global.display_text = false;
global.text_timer = 30;
global.GloveHelp = true;
global.nextScore = 0;

reset_1 = false;
reset_2 = false;
reset_3 = false;
reset_4 = false;
reset_5 = false;
reset_6 = false;
reset_7 = false;


//Level 1 spawn rates
spawnTimerCutoff_Food = 80;
spawnTimerCutoff_Obstacles = 70;
spawnTimerCutoff_Power = 500;

//Level 2 spawn rates
spawnTimerCutoff_Food_2 = 60;
spawnTimerCutoff_Obstacles_2 = 50;


//Level 3 spawn rates
spawnTimerCutoff_Food_3 = 45;
spawnTimerCutoff_Obstacles_3 = 35;

//Level 4 spawn rates
spawnTimerCutoff_Food_4 = 25;
spawnTimerCutoff_Obstacles_4 = 25;

//Level 5 spawn rates
spawnTimerCutoff_Food_5 = 15;
spawnTimerCutoff_Obstacles_5 = 15;

//Level 6 spawn rates
spawnTimerCutoff_Food_6 = 10;
spawnTimerCutoff_Obstacles_6 = 10;

//Level 8 spawn rates
spawnTimerCutoff_Food_8 = 15;
spawnTimerCutoff_Obstacles_8 = 5;