if (!oControl.game_over){
	if (!oControl.pause){
		if (global.player_score < 50000){
			global.normalNextScore = 50000 - global.player_score;
			if (spawnTimer % spawnTimerCutoff_Food == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Food", food[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Obstacles == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Obstacles", obstacles[randObjectIndex]);
			}
			spawnTimer += 1;
		}
		else if (global.player_score < 100000){
			if (!reset_1) spawnTimer = 0;
			global.normalNextScore = 100000 - global.player_score;
			global.player_level = "Level 2";
			global.grav = 3;
			if (spawnTimer % spawnTimerCutoff_Food_2 == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Food", food[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Obstacles_2 == 0){
				var x_coord = random_range(500, 510)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Obstacles", obstacles[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Power == 0){
				var x_coord = random_range(500, 510)
				var randObjectIndex = irandom(list_length_2 - 1);
				while (global.player_lives == 3) && (randObjectIndex < 2)
				{
					randObjectIndex = irandom(list_length_2 - 1);
				}
				instance_create_layer(x_coord, y_coord, "Powers", powerups[randObjectIndex]);
			}
			spawnTimer += 1;
			reset_1 = true;
		}
		else if (global.player_score < 200000){
			global.normalNextScore = 200000 - global.player_score;
			if (!reset_2) spawnTimer = 0;
			global.player_level = "Level 3";
			if (spawnTimer % spawnTimerCutoff_Food_3 == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Food", food[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Obstacles_3 == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Obstacles", obstacles[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Power == 0){
				var x_coord = random_range(400, 1000)
				var randObjectIndex = irandom(list_length_2 - 1);
				while (global.player_lives == 3) && (randObjectIndex < 2)
				{
					randObjectIndex = irandom(list_length_2 - 1);
				}
				instance_create_layer(x_coord, y_coord, "Powers", powerups[randObjectIndex]);
			}
			spawnTimer += 1;
			reset_2 = true;
		}
		else if (global.player_score < 300000){
			global.normalNextScore = 300000 - global.player_score;
			if (!reset_3) spawnTimer = 0;
			global.player_level = "Level 4";
			global.grav = 4;
			if (spawnTimer % spawnTimerCutoff_Food_4 == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Food", food[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Obstacles_4 == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Obstacles", obstacles[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Power == 0){
				var x_coord = random_range(400, 1000)
				var randObjectIndex = irandom(list_length_2 - 1);
				while (global.player_lives == 3) && (randObjectIndex < 2)
				{
					randObjectIndex = irandom(list_length_2 - 1);
				}
				instance_create_layer(x_coord, y_coord, "Powers", powerups[randObjectIndex]);
			}
			spawnTimer += 1;
			reset_3 = true;
		}
		else if (global.player_score < 500000){
			global.normalNextScore = 500000 - global.player_score;
			if (!reset_4) spawnTimer = 0;
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
				while (global.player_lives == 3) && (randObjectIndex < 3)
				{
					randObjectIndex = irandom(list_length_2 - 1);
				}
				instance_create_layer(x_coord, y_coord, "Powers", powerups2[randObjectIndex]);
			}
			spawnTimer += 1;
			reset_4 = true;
		}
		else if (global.player_score < 750000){
			global.normalNextScore = 750000 - global.player_score;
			if (!reset_5) spawnTimer = 0;
			global.player_level = "Level 6";
			global.grav = 5;
			if (spawnTimer % spawnTimerCutoff_Food_6 == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Food", food[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Obstacles_6 == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Obstacles", obstacles[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Power == 0){
				var x_coord = random_range(400, 1000)
				var randObjectIndex = irandom(list_length_2 - 1);
				while (global.player_lives == 3) && (randObjectIndex < 3)
				{
					randObjectIndex = irandom(list_length_2 - 1);
				}
				instance_create_layer(x_coord, y_coord, "Powers", powerups2[randObjectIndex]);
			}
			spawnTimer += 1;
			reset_5 = true;
		}
		else if(global.player_score < 1000000){
			global.normalNextScore = 1000000 - global.player_score;
			if (!reset_6) spawnTimer = 0;
			global.player_level = 7;
			global.grav = 7;
			global.player_level = "Level 7";
			if (spawnTimer % spawnTimerCutoff_Food_6 == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Food", food[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Obstacles_6 == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Obstacles", obstacles[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Power == 0){
				var x_coord = random_range(400, 1000)
				var randObjectIndex = irandom(list_length_2 - 1);
				while (global.player_lives == 3) && (randObjectIndex < 3)
				{
					randObjectIndex = irandom(list_length_2 - 1);
				}
				instance_create_layer(x_coord, y_coord, "Powers", powerups2[randObjectIndex]);
			}
			spawnTimer += 1;
			reset_6 = true;
		}
		else{
			if (!reset_7) spawnTimer = 0;
			global.player_level = 8;
			global.normalNextScore = 0;
			global.grav = 7;
			global.player_level = "Level 8";
			if (spawnTimer % spawnTimerCutoff_Food_8 == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Food", food[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Obstacles_8 == 0){
				var x_coord = random_range(200, 1200)
				var randObjectIndex = irandom(list_length_1 - 1);
				instance_create_layer(x_coord, y_coord, "Obstacles", obstacles[randObjectIndex]);
			}
			if (spawnTimer % spawnTimerCutoff_Power == 0){
				var x_coord = random_range(400, 1000)
				var randObjectIndex = irandom(list_length_2 - 1);
				while (global.player_lives == 3) && (randObjectIndex < 3)
				{
					randObjectIndex = irandom(list_length_2 - 1);
				}
				instance_create_layer(x_coord, y_coord, "Powers", powerups2[randObjectIndex]);
			}
			spawnTimer += 1;
			reset_7 = true;
		}
		y_coord = -50;
	}
}