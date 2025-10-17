image_angle -= 2;
y_vel = grav;
y = y + y_vel

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	if (playerCheck.canDestroy){
		global.player_score += 2000;
		instance_destroy(self, false);
	}
	else{
		global.player_lives -= 1;
		instance_destroy(self, false);
	}
}