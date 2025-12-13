if (oControl.game_over) || (oControl.pause) || (oControl.timer_win) grav = 0;
else grav = global.grav;

y_vel = grav;
y = y + y_vel;

var objCheck = instance_place(x, y, objects)
if (objCheck != noone){
	instance_destroy(objCheck, false);
}

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	//destroys all fruit on screen and adds destroyed fruit to points;
	instance_destroy(self, false);
	
	//adds to the score the amount of pears destroyed
	var pearNumber = instance_number(oPear);
	with (oPear){
		if (playerCheck.hasBoot) global.score_text = 4000;
		else global.score_text = 2000;
		instance_create_layer(x, y-10, "Info_Screen", oScorePopup);
		global.text_timer = 200;
		global.display_text = true;
	}
	if (playerCheck.hasBoot) var pearScore = pearNumber * 4000
	else pearScore = pearNumber * 2000
	global.player_score += pearScore
	instance_destroy(oPear, false);
	
	//adds to the score the amount of peppers destroyed
	var pepperNumber = instance_number(oPepper);
	with (oPepper){
		if (playerCheck.hasBoot) global.score_text = 8000;
		else global.score_text = 4000;
		instance_create_layer(x, y-10, "Info_Screen", oScorePopup);
		global.text_timer = 200;
		global.display_text = true;
	}
	if (playerCheck.hasBoot) var pepperScore = pepperNumber * 8000
	else pepperScore = pepperNumber * 4000
	global.player_score += pepperScore
	instance_destroy(oPepper, false);
	
	//adds to the score the amount of pumpkins destroyed
	var pumpNumber = instance_number(oPumpkin);
	with (oPumpkin){
		if (playerCheck.hasBoot) global.score_text = 2000;
		else global.score_text = 1000;
		instance_create_layer(x, y-10, "Info_Screen", oScorePopup);
		global.text_timer = 200;
		global.display_text = true;
	}
	if (playerCheck.hasBoot) var pumpScore = pumpNumber * 2000
	else pumpScore = pumpNumber * 1000
	global.player_score += pumpScore
	instance_destroy(oPumpkin, false);
	audio_play_sound(sfxPoof, 0, false);
	
}