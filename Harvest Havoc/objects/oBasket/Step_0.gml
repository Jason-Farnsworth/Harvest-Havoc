y_vel = grav;
y = y + y_vel;

var playerCheck = instance_place(x, y, oFarmer)
if (playerCheck != noone){
	//destroys all fruit on screen and adds destroyed fruit to points;
	instance_destroy(self, false);
	
	//adds to the score the amount of pears destroyed
	var pearNumber = instance_number(oPear);
	if (playerCheck.hasBoot) var pearScore = pearNumber * 4000
	else pearScore = pearNumber * 2000
	global.player_score += pearScore
	instance_destroy(oPear, false);
	
	//adds to the score the amount of peppers destroyed
	var pepperNumber = instance_number(oPepper);
	if (playerCheck.hasBoot) var pepperScore = pepperNumber * 8000
	else pepperScore = pepperNumber * 4000
	global.player_score += pepperScore
	instance_destroy(oPepper, false);
	
	//adds to the score the amount of pumpkins destroyed
	var pumpNumber = instance_number(oPumpkin);
	if (playerCheck.hasBoot) var pumpScore = pumpNumber * 2000
	else pumpScore = pumpNumber * 1000
	global.player_score += pumpScore
	instance_destroy(oPumpkin, false);
	
}