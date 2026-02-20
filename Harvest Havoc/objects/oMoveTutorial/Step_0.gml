if (!oControl.pause){
	//show_debug_message("test 3")
	move_text_timer -= 1;
	//show_debug_message(text_timer);
	if (move_text_timer < 0){
		//show_debug_message("score is gone")
		instance_destroy(self, false);
		global.MoveHelp = false;
		ini_open("savedata.ini");
		ini_write_real("firstTime", "Move", global.MoveHelp);
		ini_close();
	}
}