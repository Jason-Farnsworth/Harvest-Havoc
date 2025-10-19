if (game_over){
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
		
	}
}