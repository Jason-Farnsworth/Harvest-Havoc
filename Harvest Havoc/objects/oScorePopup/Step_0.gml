if (global.display_text){
	global.text_timer -= 1;
	//show_debug_message(text_timer);
	if (global.text_timer < 0){
		//show_debug_message("score is gone")
		instance_destroy(oScorePopup, false);
		global.display_text = false;
		global.text_timer = 30;
	}
}