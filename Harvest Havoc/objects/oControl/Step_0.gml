if (pause){
	if (screen_create == false){
		instance_create_layer(x, y, "Info_Screen", oDarken);
		screen_create = true;
	}
	if (global.gameMode == "time") oSpawnTime.alarm[0] = -1;
	if (global.gameMode == "survival") oSpawnSurvival.alarm[0] = -1;
	//instance_deactivate_all(true);
	
	if keyboard_check_pressed(ord("R")){
		instance_destroy(oDarken, false);
		//instance_activate_all();
		pause = false;
		screen_create = false;
		if (global.gameMode == "time") oSpawnTime.alarm[0] = 6;
		if (global.gameMode == "survival") oSpawnSurvival.alarm[0] = 30;
	}
	else if keyboard_check_pressed(ord("E")){
		if (global.gameMode == "normal"){
			global.normal_player_high_score = 0;
		}
		if (global.gameMode == "hard"){			
			global.hard_player_high_score = 0;
		}
		if (global.gameMode == "time"){
			/*global.min_player_high_score = 0; //Why is this becoming undefined?
			global.sec_player_high_score = 0;
			global.mil_player_high_score = 0;
			global.time_player_high_score = string(global.min_player_high_score) + ":" + "0" + string(global.sec_player_high_score) + "." + string(global.mil_player_high_score);*/
			global.time_player_high_score = 0;
		}
		if (global.gameMode == "survival"){
			global.survival_player_high_score = 0;
		}
	}
	else if keyboard_check_pressed(ord("M")){
		room_goto(rm_Menu);
		
		ini_open("savedata.ini");
		if (global.gameMode == "normal"){
			ini_write_real("save1", "High Score", global.normal_player_high_score);
		}
		if (global.gameMode == "hard"){
			ini_write_real("save2", "Hard High Score", global.hard_player_high_score);
		}
		if (global.gameMode == "time"){
			/*ini_write_real("save3", "Best Min Time", global.min_player_high_score);
			ini_write_real("save4", "Best Sec Time", global.sec_player_high_score);
			ini_write_real("save5", "Best Mil Time", global.mil_player_high_score);*/
			ini_write_real("save3", "Time High Score", global.time_player_high_score);
		}
		if (global.gameMode == "survival"){
			ini_write_real("save4", "Survival High Score", global.survival_player_high_score);
		}
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
	/*if (global.player_score > global.normal_player_high_score){
		global.normal_player_high_score = global.player_score
		ini_open("savedata.ini");
		if (global.gameMode == "normal"){
			ini_write_real("save1", "High Score", global.normal_player_high_score);
		}
		if (global.gameMode == "hard"){
			ini_write_real("save2", "Hard High Score", global.hard_player_high_score);
		}
		ini_close();
	}*/
	ini_open("savedata.ini");
	if (global.gameMode == "normal"){
		if (global.player_score > global.normal_player_high_score){
			global.normal_player_high_score = global.player_score;
			ini_write_real("save1", "High Score", global.normal_player_high_score);
			}
		}
	else if (global.gameMode == "hard"){
		if (global.player_score > global.hard_player_high_score){
			global.hard_player_high_score = global.player_score
			ini_write_real("save2", "Hard High Score", global.hard_player_high_score);
		}
	}
	else if (global.gameMode == "survival"){
		oSpawnSurvival.alarm[0] = -1;
		if (global.player_score > global.survival_player_high_score){
			global.survival_player_high_score = global.player_score
			ini_write_real("save4", "Survival High Score", global.survival_player_high_score);
		}
	}
	/*var curr_time_in_num = global.timer_mil + global.timer_sec + global.timer_min;
	var best_time_in_num = global.min_player_high_score + global.sec_player_high_score + global.mil_player_high_score;
	global.time_player_high_score = global.min_player_high_score + ":" + global.sec_player_high_score + "." + global.mil_player_high_score;
	
	if (curr_time_in_num > best_time_in_num){
		ini_open("savedata.ini");
		//global.time_player_high_score = global.timer;
		//ini_write_real("save3", "Best Time", global.time_player_high_score);
		global.min_player_high_score = global.timer_min;
		global.sec_player_high_score = global.timer_sec;
		global.mil_player_high_score = global.timer_mil;
		global.min_player_high_score = ini_read_real("save3", "Best Min Time", global.min_player_high_score);
		global.sec_player_high_score = ini_read_real("save4", "Best Sec Time", global.sec_player_high_score);
		global.mil_player_high_score = ini_read_real("save5", "Best Mil Time", global.mil_player_high_score);
	}*/
	ini_close();
	
	
	//This will only ever happen on Normal Mode, since other modes won't be unlocked
	if (global.player_score >= 50000 and global.firstTime == true){
		ini_open("savedata.ini");
		ini_write_real("firstTime", "Submenu", false);
		if (!global.switch50k){
			global.showNewModeMessage = true;
			global.showNewMode = true;
		}
		global.switch50k = true;
		ini_write_real("firstTime", "NewMode", true);
		ini_close();
		global.firstTime = false;
	}
	
	if keyboard_check_pressed(ord("R")){
		/*if (global.player_score >= 50000){
			global.player_score = 50000;
		}
		else{
			global.player_score = 0;
			global.player_level = "Level 1"
			global.grav = 2;
		}*/
		global.player_score = 0;
		global.player_level = "Level 1"
		if (global.gameMode == "normal"){
			global.grav = 2;
			global.player_lives = 3;
			y_coord = -30;
		}
		if (global.gameMode == "hard"){
			global.grav = 3;
			global.player_lives = 2;
			y_coord = -30;
		}
		if (global.gameMode == "time"){
			global.grav = 3;
			global.player_lives = 3;
			oSpawnTime.alarm[0] = 6;
			global.timer_min = 2;
			global.timer_sec = 0;
			global.timer_mil = 0;
			y_coord = -30;
		}
		if (global.gameMode == "survival"){
			global.grav = 4;
			global.player_lives = 3;
			oSpawnSurvival.alarm[0] = 30;
		}
		//global.player_score = 50000;
		for (var i=0; i<array_length(objects); i+=1){
			instance_destroy(objects[i], false);
		}
		instance_destroy(oSnowball, false)
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
		global.showNewModeMessage = false;
		
	}
	else if keyboard_check_pressed(ord("M")){
		global.showNewModeMessage = false;
		room_goto(rm_Menu);
	}
	else if keyboard_check_pressed(ord("D")){
		global.showNewModeMessage = false;
		room_goto(rm_ModeMenu);
	}
}

else if (global.gameMode == "time" and global.timer_end = true){ //This must be a separate check for when the player survives the timer
	if (timer_win = false) {
	if global.sfxControl audio_play_sound(sfxFruit, 0, false);
	}
	timer_win = true; //Is necessary so other t6hings pause when timer is 0
	
	
	if (screen_create == false){
		instance_create_layer(x, y, "Info_Screen", oDarken);
		screen_create = true;
	}
	
	/*if (!timer_settings){
	//Stuff like this only needs to happen once. How do I have it only trigger once (when timer_win is initially hit)?
		oSpawnTime.alarm[0] = -1;
		//var curr_time_in_num = global.timer_min * 100 + global.timer_sec * 10 + global.timer_mil;
		//show_debug_message(global.min_player_high_score)
		//show_debug_message(global.sec_player_high_score)
		//show_debug_message(global.mil_player_high_score)
		//var best_time_in_num = global.min_player_high_score * 100+ global.sec_player_high_score * 10 + global.mil_player_high_score;
	
		//show_debug_message("added cur " + curr_time_in_num)
		//if (global.sec_player_high_score > 10) global.time_player_high_score = string(global.min_player_high_score) + ":" + string(global.sec_player_high_score) + "." + string(global.mil_player_high_score);
		//else global.time_player_high_score = string(global.min_player_high_score) + ":" + "0" + string(global.sec_player_high_score) + "." + string(global.mil_player_high_score);
	
		//show_debug_message("time high score " + global.time_player_high_score);
		//show_debug_message(best_time_in_num);
		//show_debug_message(curr_time_in_num)
		if (best_time_in_num == 0){
			ini_open("savedata.ini");
			//global.time_player_high_score = global.timer;
			//ini_write_real("save3", "Best Time", global.time_player_high_score);
			if (global.sec_player_high_score > 10) global.time_player_high_score = string(global.min_player_high_score) + ":" + string(global.sec_player_high_score) + "." + string(global.mil_player_high_score);
			else global.time_player_high_score = string(global.min_player_high_score) + ":" + "0" + string(global.sec_player_high_score) + "." + string(global.mil_player_high_score);
			global.min_player_high_score = global.timer_min;
			global.sec_player_high_score = global.timer_sec;
			global.mil_player_high_score = global.timer_mil;
			global.min_player_high_score = ini_write_real("save3", "Best Min Time", global.min_player_high_score);
			global.sec_player_high_score = ini_write_real("save4", "Best Sec Time", global.sec_player_high_score);
			global.mil_player_high_score = ini_write_real("save5", "Best Mil Time", global.mil_player_high_score);
			ini_close();
			
		}
		if (curr_time_in_num < best_time_in_num){
			show_debug_message("this should work")
			ini_open("savedata.ini");
			if (global.sec_player_high_score > 10) global.time_player_high_score = string(global.min_player_high_score) + ":" + string(global.sec_player_high_score) + "." + string(global.mil_player_high_score);
			else global.time_player_high_score = string(global.min_player_high_score) + ":" + "0" + string(global.sec_player_high_score) + "." + string(global.mil_player_high_score);
			//global.time_player_high_score = global.timer;
			//ini_write_real("save3", "Best Time", global.time_player_high_score);
			global.min_player_high_score = global.timer_min;
			global.sec_player_high_score = global.timer_sec;
			global.mil_player_high_score = global.timer_mil;
			global.min_player_high_score = ini_write_real("save3", "Best Min Time", global.min_player_high_score);
			global.sec_player_high_score = ini_write_real("save4", "Best Sec Time", global.sec_player_high_score);
			global.mil_player_high_score = ini_write_real("save5", "Best Mil Time", global.mil_player_high_score);
			ini_close();
		}
		
		timer_settings = true;
	}*/
	if (global.player_score > global.time_player_high_score){
		ini_open("savedata.ini");
		global.time_player_high_score = global.player_score
		ini_write_real("save3", "Time High Score", global.time_player_high_score);
		ini_close();

	}
	
	if keyboard_check(ord("R")){
		global.player_score = 0;
		global.grav = 4;
		global.player_lives = 3;
		//global.player_score = 50000;
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
		global.showNewModeMessage = false;
		timer_win = false;
		global.timer_end = false;
		global.timer_mil = 0;
		global.timer_sec = 0;
		global.timer_min = 2;
		oSpawnTime.alarm[0] = 6;
		timer_settings = false;
		
	}
	else if keyboard_check_pressed(ord("M")){
		global.showNewModeMessage = false;
		room_goto(rm_Menu);
	}
	else if keyboard_check_pressed(ord("D")){
		global.showNewModeMessage = false;
		room_goto(rm_ModeMenu);
	}
}
