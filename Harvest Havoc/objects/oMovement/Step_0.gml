if (!global.TOUCH_CONTROLS){
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
}

if (global.TOUCH_CONTROLS){
	if (instance_exists(oBackArrow)) key_left = oBackArrow.mobile_key_left;
	if (instance_exists(oFrontArrow)) key_right = oFrontArrow.mobile_key_right;
}

//show_debug_message(key_left)

if (oControl.game_over) || (oControl.pause) || (oControl.timer_win) move = 0
else if (global.TOUCH_CONTROLS){
	if oBackArrow.backArrowTouch =! -1 and oFrontArrow.frontArrowTouch =! -1{
		move = 0 
		show_debug_message("both")
	}
	else move = key_right - key_left;
}
else move = key_right - key_left;

if (!instance_exists(oFarmer)){
	instance_create_layer(736, 544, "Instances", oFarmer)
}


