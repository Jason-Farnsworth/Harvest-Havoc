draw_self();

if (flashAlpha > 0){
	shader_set(shFlash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, flashColor, flashAlpha);
	shader_reset();
}
/*
if (canDestroy){
	draw_set_color(c_white);
	draw_set_font(fPowerupTimer);
	draw_set_halign(fa_center);
	draw_text(550, 60, "Glove Timer: " + string(canDestroyTimer));
}

if (hasBoot){
	draw_set_color(c_white);
	draw_set_font(fPowerupTimer);
	draw_set_halign(fa_center);
	draw_text(850, 60, "Boot Timer: " + string(hasBootTimer));
}*/

/// @desc Powerup Timers
timerBarX = x - 10;
timerBarBootY = y - 85;
timerBarGloveY = y - 55;

if (canDestroy){
	draw_sprite(sPowerTimerBG, 0, timerBarX, timerBarGloveY);
	draw_sprite_stretched(sGloveTimer, 0, timerBarX, timerBarGloveY, (canDestroyTimer/canDestroyTimerMax) * timerBarWidth, timerBarHeight);
	draw_sprite(sPowerTimerBorder, 0, timerBarX, timerBarGloveY);
	draw_sprite(sGlove_1, 0, timerBarX - 20, timerBarGloveY + 5);
}

if (hasBoot){
	draw_sprite(sPowerTimerBG, 0, timerBarX, timerBarBootY);
	draw_sprite_stretched(sBootTimer, 0, timerBarX, timerBarBootY, (hasBootTimer/hasBootTimerMax) * timerBarWidth, timerBarHeight);
	draw_sprite(sPowerTimerBorder, 0, timerBarX, timerBarBootY);
	draw_sprite(sBootsTimerIcon, 0, timerBarX - 20, timerBarBootY + 5);
}