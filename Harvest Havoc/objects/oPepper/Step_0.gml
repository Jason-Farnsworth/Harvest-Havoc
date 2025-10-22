if (oControl.game_over) || (oControl.pause) grav = 0;
else grav = 2;

y_vel = grav;
y = y + y_vel;

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	if (playerCheck.hasBoot) global.player_score += 8000;	
	else global.player_score += 4000;

	audio_play_sound(sfxFruit, 0, false);
	instance_destroy(self, false);
}