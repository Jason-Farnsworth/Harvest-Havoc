if (oControl.game_over) || (oControl.pause) || (oControl.timer_win){
	grav = 0;
	x_vel = 0;
	//image_angle = image_angle;
	imageAngle = imageAngle
}
else {	
	//image_angle -= 2;
	//imageAngle -= 2;
	grav = permanent_grav;
	if x >= 1100 faceRight = !faceRight
	if x <= 300 faceRight = !faceRight
	if faceRight{
		x_vel = -1 * permanent_x_vel;
		imageAngle -=2;
	}
	if !faceRight{
		x_vel = permanent_x_vel;
		imageAngle += 2;
	}
}

y_vel = grav;
y = y + y_vel;
x = x + x_vel;

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	instance_destroy(self, false);
	//show_debug_message("hello")
	if (global.player_lives > 0){
		//give player i-frames and knock them back a bit
		if global.sfxControl audio_play_sound(sfxHurt, 0, false);
		playerCheck.isInvincible = true;
		playerCheck.flashActive = true;
		global.player_lives -=1;
	}
	else oControl.game_over = true;
}