//Variables used for the dynamic Game Over screen for Normal Mode
global.showNewModeMessage = false;
//global.showNewMode = false;
global.switch50k = false;
global.musicControl = true;
global.sfxControl = true;
global.timerGraphic = true;
global.timerDirUp = true;
//global.firstTime = true; //Comment this out when publishing game
//global.GloveHelp = true; //Uncomment this when having people playtest dev version
//global.MoveHelp = true; //Uncomment when having people playtest dev version

switch(os_type)
{
	case os_windows: 
		global.TOUCH_CONTROLS = false;
	break;
	
	case os_android:
		global.TOUCH_CONTROLS = true;
	break;
}
