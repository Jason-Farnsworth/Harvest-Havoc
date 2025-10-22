key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

if (!oControl.game_over) var move = key_right - key_left;
else move = 0

if (hasBoot){
	horiz_move_speed = (move * walk_speed) * 2;
}
else{
	horiz_move_speed = move * walk_speed;
}
vert_move_speed = vert_move_speed + grav;


//Horizontal Geometry Collision
if (place_meeting(x+horiz_move_speed, y, terrain)){
	while(!place_meeting(x+sign(horiz_move_speed), y, terrain)){
		x = x + sign(horiz_move_speed);
	}
	horiz_move_speed = 0;
}
x = x + horiz_move_speed;

//Vertical Geometry Collision
if (place_meeting(x, y+vert_move_speed, terrain)){
	while(!place_meeting(x, y+sign(vert_move_speed), terrain)){
		y = y + sign(vert_move_speed);
	}
	vert_move_speed = 0;
}
y = y + vert_move_speed;


//Obstacle Detection
var shrubCheck = instance_place(x, y, oShrub)
if (shrubCheck != noone){
	if (isInvincible){
	}
	else if (!isInvincible){
		if global.player_lives > 0{
			//give player i-frames and knock them back a bit
			isInvincible = true;
			flashActive = true;
			if (isRight){
				x -= 40;
			}
			else{
				x += 40;
			}
		global.player_lives -=1;
		}
	}
}
if (global.player_lives < 1){
	oControl.game_over = true;
}


//Keeping track of invincibility 
if (isInvincible){
		invincibleTimer -= 1;
		if (invincibleTimer < 0){
			isInvincible = false;
			invincibleTimer = 30;
			flashActive = false;
		}
	}

if (flashActive){
	if (flashSpeed % 5 == 0){
		if (flashAlpha == 0) flashAlpha = 1;
		else flashAlpha = 0
	}
	flashSpeed += 3;
}

//Power Up Timers
if (hasBoot){
	hasBootTimer -= 1;
	//show_debug_message("boot is active");
	if (hasBootTimer == 0){
		//show_debug_message("boot is gone")
		hasBoot = false;
		hasBootTimer = 300;
	}
}

if (canDestroy){
	canDestroyTimer -=1;
	//show_debug_message("glove is active");
	if (canDestroyTimer == 0){
		//show_debug_message("glove is gone")
		canDestroy = false;
		canDestroyTimer = 300;
	}
	
}


//Animation
if (oControl.game_over){
	sprite_index = sFarmerGameOver;
	image_speed = 0.2;
}
else if (horiz_move_speed !=0){
	if (canDestroy) && (hasBoot){
		sprite_index = sFarmerMove_Both;
		image_speed = 0.5;
	}
	else if (canDestroy){
		sprite_index = sFarmerMove_Glove;
		image_speed = 0.5;
	}
	else if (hasBoot){
		sprite_index = sFarmerMove_Boots;
		image_speed = 0.5;
	}
	else{
		sprite_index = sFarmerMove;
		image_speed = 0.5;
	}
}
else{
	if (canDestroy) && (hasBoot){
		sprite_index = sFarmerIdle_Both;
		image_speed = 0.5;
	}
	else if (canDestroy){
		sprite_index = sFarmerIdle_Glove;
		image_speed = 0.5;
	}
	else if (hasBoot){
		sprite_index = sFarmerIdle_Boots;
		image_speed = 0.5;
	}
	else{
		sprite_index = sFarmerIdle;
		image_speed = 0.5;
	}
}

if (horiz_move_speed !=0){ 
	image_xscale = sign(horiz_move_speed) * 1;
	isRight = sign(horiz_move_speed) > 0;
}