if (!oControl.game_over){
	if (spawnTimer_1 % spawnTimerCutoff == 0){
		var x_coord = random_range(150, 1250)
		var randObjectIndex = irandom(list_length_1 - 1);
		instance_create_layer(x_coord, y_coord, "Instances", food[randObjectIndex]);
	}
	if (spawnTimer_2 % spawnTimerCutoff == 0){
		var x_coord = random_range(150, 1250)
		var randObjectIndex = irandom(list_length_1 - 1);
		instance_create_layer(x_coord, y_coord, "Instances", obstacles[randObjectIndex]);
	}
	if (spawnTimer_3 % spawnTimerCutoff == 0){
		var x_coord = random_range(150, 1250)
		var randObjectIndex = irandom(list_length_1 - 1);
		instance_create_layer(x_coord, y_coord, "Instances", powerups[randObjectIndex]);
	}
	spawnTimer_1 += 1;
	spawnTimer_2 += 1;
	spawnTimer_3 += 0.4;
}