audio_stop_sound(global.music);

if global.gameMode == "normal" or global.gameMode == "time"{
	if global.musicControl{
		global.music = sGameMusic2;
		audio_play_sound(global.music, 0, true);
	}
}
else {
	if global.musicControl{
		global.music = sGameMusic4;
		audio_play_sound(global.music, 0, true);
	}
}