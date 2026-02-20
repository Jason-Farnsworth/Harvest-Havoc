ini_open("savedata.ini");
window_set_caption("Harvest Havoc");
global.firstTime = ini_read_real("firstTime", "Submenu", true); //Uncomment when publishing game
global.GloveHelp = ini_read_real("firstTime", "Glove", true); //Uncomment when publishing game
global.MoveHelp = ini_read_real("firstTime", "Move", true); //Uncomment when publishing game

ini_close();

global.gameMode = "";

//Variables used for the dynamic Game Over screen for Normal Mode
//global.showNewModeMessage = false;
//global.showNewMode = false;
