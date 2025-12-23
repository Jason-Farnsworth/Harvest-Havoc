//if !(global.music = "title") audio_play_sound(sTitleMusic, 0, true);
//else audo_sound_loop(sTitleMusic, true);
if (global.musicControl){
	if !audio_is_playing(sTitleMusic)
	{
		audio_stop_sound(global.music)
	    audio_play_sound(sTitleMusic, 0, true);
	}
	global.music = sTitleMusic;
}