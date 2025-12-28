if (oControl.game_over) || (oControl.pause) || (oControl.timer_win) grav = 0;
else grav = global.grav;

y_vel = grav;
y = y + y_vel;

objCheck = instance_place(x, y, objects)
if (objCheck != noone)
{
	instance_destroy(self, false);
}

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	if (playerCheck.hasBoot) {
		global.player_score += 4000;
		global.score_text = 4000
	}
	else {
		global.player_score += 2000;
		global.score_text = 2000;
	}
	
	if global.sfxControl audio_play_sound(sfxFruit, 0, false);
	instance_destroy(self, false);
	instance_create_layer(x, y-10, "Info_Screen", oScorePopup);
	global.text_timer = 30;
	global.display_text = true;
}
