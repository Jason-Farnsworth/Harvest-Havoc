/*if mouse_check_button(mb_left){
	mobile_key_left = true;
}
else{
	mobile_key_left = false;
}*/
/*if device_mouse_check_button(0,mb_left) or device_mouse_check_button(1,mb_left){
    mobile_key_left = true;
	show_debug_message("beep left")
}
else{
    mobile_key_left = false;
}*/
if (backArrowTouch == -1){
	for (var i = 0; i < 2; i += 1) {//Checks for up to 2 tap events
		if (device_mouse_check_button_pressed(i, mb_any)){ //Checks for any general tap events anywhere
			if (position_meeting(device_mouse_x(i), device_mouse_y(i), id)){
				backArrowTouch = i;
				mobile_key_left = true;
			}
		}
	}
} else {
	if (device_mouse_check_button_released(backArrowTouch, mb_any)){
		backArrowTouch = -1;
		mobile_key_left = false;
	}
}
