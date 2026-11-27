/*if mouse_check_button(){
	mobile_key_right = true;
}
else{
	mobile_key_right = false;
}*/
/*if device_mouse_check_button(0,mb_left) or device_mouse_check_button(1,mb_left){
    mobile_key_right = true;
	show_debug_message("beep right")
}
else{
    mobile_key_right = false;
}*/
if (frontArrowTouch == -1){
	for (var i = 0; i < 2; i += 1) {//Checks for up to 2 tap events
		if (device_mouse_check_button_pressed(i, mb_any)){ //Checks for any general tap events anywhere
			if (position_meeting(device_mouse_x(i), device_mouse_y(i), id)){
				frontArrowTouch = i;
				mobile_key_right = true;
			}
		}
	}
} else {
	if (device_mouse_check_button_released(frontArrowTouch, mb_any)){
		frontArrowTouch = -1;
		mobile_key_right = false;
	}
}