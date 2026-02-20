if (oControl.game_over) ||(oControl.pause) || (oControl.timer_win){
	if (oControl.game_over || oControl.timer_win) {
		audio_stop_sound(global.music);
		music_stop = true;
	}
	else if (oControl.pause){
		audio_pause_sound(global.music);
		music_pause = true;
	}
	restart_trigger = true;
	playing_sound = false;
}

if (oControl.game_over == false) && (restart_trigger) && (!playing_sound){
	if (oControl.pause == false) && (restart_trigger) && (!playing_sound){
		if (oControl.timer_win == false) && (restart_trigger) && (!playing_sound){
			if global.gameMode == "normal" or global.gameMode == "survival"{ 
				global.music = sGameMusic2
			}
			else if global.gameMode == "hard" or global.gameMode == "time"{
				global.music = sGameMusic4
			}
			
			if (music_stop) {
				if global.musicControl audio_play_sound(global.music, 0, true);
			}
			else {
				audio_resume_sound(global.music);
			}
			playing_sound = true;
			music_stop = false;
			music_pause = false;
		}
	}
}
/*if (oControl.game_over == false) && (restart_trigger) && (!playing_sound){
	audio_play_sound(sGameMusic2, 0, true);
	playing_sound = true;
}*/

