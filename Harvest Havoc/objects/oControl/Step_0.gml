if (pause){
	if (screen_create == false){
		instance_create_layer(x, y, "Info_Screen", oDarken);
		screen_create = true;
	}
	//instance_deactivate_all(true);
	
	if keyboard_check_pressed(ord("R")){
		instance_destroy(oDarken, false);
		//instance_activate_all();
		pause = false;
		screen_create = false;
	}
	else if keyboard_check_pressed(ord("E")){
		global.player_high_score = 0;
	}
	else if keyboard_check_pressed(ord("M")){
		room_goto(rm_Menu);
		ini_open("savedata.ini");
		ini_write_real("save1", "High Score", global.player_high_score);
		ini_close();
	}
}
else if (game_over){
	//game_end()
	//Creating a Game Over Screen
	if (screen_create == false){
		instance_create_layer(x, y, "Info_Screen", oDarken);
		screen_create = true;
	}
	if (global.player_score > global.player_high_score){
		global.player_high_score = global.player_score
		ini_open("savedata.ini");
		ini_write_real("save1", "High Score", global.player_high_score);
		//score2 = ini_read_real("save1", "Score", 0 );
		ini_close();
	}
	
	if keyboard_check(ord("R")){
		global.player_lives = 3;
		if (global.player_score >= 50000){
			global.player_score = 50000;
		}
		else{
			global.player_score = 0;
			global.player_level = "Level 1"
			global.grav = 2;
		}
		global.player_score = 50000;
		for (var i=0; i<array_length(objects); i+=1){
			instance_destroy(objects[i], false);
		}
		instance_destroy(oDarken, false);
		oFarmer.x = 670;
		oFarmer.y = 540;
		game_over = false;
		oFarmer.hasBoot = false;
		oFarmer.canDestroy = false;
		oFarmer.hasBootTimer = 400;
		oFarmer.canDestroyTimer = 400;
		oFarmer.flashActive = false;
		oFarmer.flashAlpha = 0;
		screen_create = false;
		global.GloveHelp = false;
		
	}
	else if keyboard_check(vk_escape){
		game_end();
	}
}