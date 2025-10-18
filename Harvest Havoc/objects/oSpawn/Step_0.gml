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
spawnTimer_1 += 1;
spawnTimer_2 += 1;