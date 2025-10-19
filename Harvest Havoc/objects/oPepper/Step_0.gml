if (oControl.game_over){
	grav = 0;
}
y_vel = grav;
y = y + y_vel;

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	if (playerCheck.hasBoot){
		global.player_score += 8000;
		instance_destroy(self, false);
	}
	else{
		global.player_score += 4000;
		instance_destroy(self, false);
	}
}