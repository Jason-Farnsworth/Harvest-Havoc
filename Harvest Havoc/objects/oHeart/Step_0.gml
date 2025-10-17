y_vel = grav;
y = y + y_vel;

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	global.player_lives += 1;
	instance_destroy(self, false);
}