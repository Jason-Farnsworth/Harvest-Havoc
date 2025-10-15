key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

var move = key_right - key_left;

horiz_move_speed = move * walk_speed;
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


//Animation
if (horiz_move_speed !=0){
	sprite_index = sFarmerMove;
	image_speed = 0.5;
}
else{
	sprite_index = sFarmerIdle;
	image_speed = 0.5;
}
if (horiz_move_speed !=0) image_xscale = sign(horiz_move_speed) * 1