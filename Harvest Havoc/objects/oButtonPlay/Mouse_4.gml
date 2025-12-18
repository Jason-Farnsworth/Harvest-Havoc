// Inherit the parent event
event_inherited();
if (global.firstTime){
	global.gameMode = "normal";
	room_goto(rm_Game);
}
else room_goto(rm_ModeMenu);
