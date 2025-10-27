if (!oControl.pause){
	glove_text_timer -= 1;
	//show_debug_message(text_timer);
	if (glove_text_timer < 0){
		//show_debug_message("score is gone")
		instance_destroy(self, false);
		global.GloveHelp = false;
	}
}