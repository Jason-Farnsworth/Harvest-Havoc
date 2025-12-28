if (oControl.game_over) || (oControl.pause) || (oControl.timer_win) grav = 0;
else grav = global.grav;

y_vel = grav;
y = y + y_vel;

/*var objCheck = instance_place(x, y, objects)
if (objCheck != noone){
	instance_destroy(objCheck, false);
}*/
/*objCheck = collision_circle(x, y, 50, objects, false, true)
if (objCheck != noone)
{
	instance_destroy(objCheck, false);
}*/

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	if (playerCheck.canDestroy = true){
		playerCheck.canDestroyTimer = 400;
		if global.sfxControl audio_play_sound(sfxPower, 0, false);
		instance_destroy(self, false);
	}
	else{
		playerCheck.canDestroy = true;
		if global.sfxControl audio_play_sound(sfxPower, 0, false);
		instance_destroy(self, false);
		//playerCheck.canDestroyTimer = 400;
		//show_debug_message("test 1")
		if (global.GloveHelp) {
			//show_debug_message("test 2")
			instance_create_layer(680, 250, "GloveTutorial", oGloveTutorial);
		}
	}
}