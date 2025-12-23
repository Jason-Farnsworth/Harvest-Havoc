if (global.musicControl){
	if !audio_is_playing(sHelpMusic)
	{
		audio_stop_sound(global.music)
	    audio_play_sound(sHelpMusic, 0, true);
	}
	global.music = sHelpMusic;
}
else audio_stop_sound(global.music)