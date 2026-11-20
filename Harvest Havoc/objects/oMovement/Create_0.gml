var move = 0;

//MOBILE OPTIMIZATION
if (global.TOUCH_CONTROLS = true){
	layer_create(50, "Arrows")
	instance_create_layer(64, 64, "Instances", oPause); //comment out when done debugging on pc
	instance_create_layer(160, 710, "Arrows", oBackArrow);
	instance_create_layer(1250, 710, "Arrows", oFrontArrow);
}

/*layer_create(50, "Arrows")
instance_create_layer(64, 64, "Instances", oPause); //comment out when done debugging on pc
instance_create_layer(160, 710, "Arrows", oBackArrow);
instance_create_layer(1250, 710, "Arrows", oFrontArrow);*/