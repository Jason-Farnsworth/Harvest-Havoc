if (pause){
	instance_create_layer(x, y, "Info_Screen", oDarken);
	//instance_deactivate_all(true);
	
	if keyboard_check_pressed(vk_backspace){
		instance_destroy(oDarken, false);
		//instance_activate_all();
		pause = false;
	}
	else if keyboard_check_pressed(vk_escape){
		game_end();
	}
}
else if (game_over){
	//game_end()
	//Creating a Game Over Screen
	instance_create_layer(x, y, "Info_Screen", oDarken);
	
	if keyboard_check(vk_space){
		if (global.player_score > global.player_high_score){
		global.player_high_score = global.player_score
		}
		global.player_lives = 3;
		global.player_score = 0;
		for (var i=0; i<array_length(objects); i+=1){
			instance_destroy(objects[i], false);
		}
		instance_destroy(oDarken, false);
		oFarmer.x = 670;
		oFarmer.y = 540;
		game_over = false;
		global.player_level = "Level 1"
		
	}
	else if keyboard_check(vk_escape){
		game_end();
	}
}