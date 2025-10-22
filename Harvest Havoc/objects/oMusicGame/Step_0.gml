if (oControl.game_over) {
	audio_stop_sound(gameMusic);
	restart_trigger = true;
	playing_sound = false;
}

if (!oControl.game_over) && (restart_trigger) && (!playing_sound){
	audio_play_sound(sGameMusic2, 0, true);
	playing_sound = true;
}

