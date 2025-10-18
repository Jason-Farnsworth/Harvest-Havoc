if (game_over){
	//game_end()
	//Creating a Game Over Screen
	if (global.player_score > global.player_high_score){
		global.player_high_score = global.player_score
	}
	if keyboard_check(vk_anykey){
		global.player_lives = 3;
		global.player_score = 0;	
	}
}