if (oControl.game_over) || (oControl.pause) grav = 0;
else grav = global.grav;

y_vel = grav;
y = y + y_vel;

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	playerCheck.hasBoot = true;
	audio_play_sound(sfxPower, 0, false);
	instance_destroy(self, false);
	playerCheck.hasBootTimer = 350;
}