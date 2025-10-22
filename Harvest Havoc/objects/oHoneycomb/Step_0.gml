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
		if (playerCheck.hasBoot) global.player_score += 2000;
		else global.player_score += 1000;
		
		instance_destroy(self, false);
		audio_play_sound(sfxObstacle, 0, false);
	}
	else if (playerCheck.isInvincible){
	playerCheck.invincibleTimer -= 1;
		if (playerCheck.invincibleTimer < 0){
			//show_debug_message("hi")
			playerCheck.isInvincible = false;
			playerCheck.invincibleTimer = 20;
		}
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