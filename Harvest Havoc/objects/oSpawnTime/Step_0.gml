if (!oControl.game_over){
	if (!oControl.pause){
		//global.hardNextScore = 500000 - global.player_score;
		//if (!reset_4) spawnTimer = 0;
		global.player_level = "Level 5";
		if (spawnTimer % spawnTimerCutoff_Food_5 == 0){
			var x_coord = random_range(200, 1200)
			var randObjectIndex = irandom(list_length_1 - 1);
			instance_create_layer(x_coord, y_coord, "Food", food[randObjectIndex]);
		}
		if (spawnTimer % spawnTimerCutoff_Obstacles_5 == 0){
			var x_coord = random_range(200, 1200)
			var randObjectIndex = irandom(list_length_1 - 1);
			instance_create_layer(x_coord, y_coord, "Obstacles", obstacles[randObjectIndex]);
		}
		if (spawnTimer % spawnTimerCutoff_Power == 0){
			var x_coord = random_range(400, 1000)
			var randObjectIndex = irandom(list_length_2 - 1);
			while (global.player_lives == 3) && (randObjectIndex < 1)
			{
				randObjectIndex = irandom(list_length_2 - 1);
			}
			instance_create_layer(x_coord, y_coord, "Powers", powerups[randObjectIndex]);
		}
		spawnTimer += 1;
		y_coord = -50;
	}
}


