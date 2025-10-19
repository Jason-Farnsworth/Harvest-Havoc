if (oControl.game_over){
	grav = 0;
}
y_vel = grav;
y = y + y_vel;

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	if (global.player_lives < 3){
		global.player_lives += 1;
	}
	instance_destroy(self, false);
}