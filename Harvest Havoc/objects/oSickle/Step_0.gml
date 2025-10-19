if (oControl.game_over){
	grav = 0;
}
if (!oControl.game_over){
	image_angle -= 2;
}
y_vel = grav;
y = y + y_vel;

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	if (playerCheck.canDestroy){
		global.player_score += 4000;
		instance_destroy(self, false);
	}
	else if (playerCheck.isInvincible){
	}
	else if (!playerCheck.isInvincible){
		instance_destroy(self, false);
		//show_debug_message("hello")
		if (global.player_lives > 0){
			//give player i-frames and knock them back a bit
			playerCheck.isInvincible = true;
			playerCheck.flashActive = true;
			if (playerCheck.isRight){
				playerCheck.x -= 40;
			}
			else{
				playerCheck.x += 40;
			}
		global.player_lives -=1;
		}
	else oControl.game_over = true;
	}
}