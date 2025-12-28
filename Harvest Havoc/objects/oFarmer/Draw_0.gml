draw_self();

if (flashAlpha > 0){
	shader_set(shFlash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, flashColor, flashAlpha);
	shader_reset();
}

/// @desc Powerup Timers
if (global.timerGraphic){
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
}
else{
	if (canDestroy){
		draw_set_color(c_white);
		draw_set_font(fPowerupTimer);
		draw_set_halign(fa_center);
		if global.timerDirUp{
			draw_sprite_ext(sTimerUpBG, 0, 900, 85, 1, 1, 0, c_white, 0.75); //Making bg transparent so players can still see falling obstacles
			draw_text_color(900, 60, "Glove Timer: " + string(canDestroyTimer), c_white, c_white, c_white, c_white, 1);
		}
		else draw_text(1125, 710, "Glove Timer: " + string(canDestroyTimer));
	}

	if (hasBoot){
		draw_set_color(c_white);
		draw_set_font(fPowerupTimer);
		draw_set_halign(fa_center);
		if global.timerDirUp{ 
			draw_sprite_ext(sTimerUpBG, 0, 550, 85, 1, 1, 0, c_white, 0.75) //Making bg transparent so players can still see falling obstacles
			draw_text_color(550, 60, "Boot Timer: " + string(hasBootTimer), c_white, c_white, c_white, c_white, 1);
		}
		else draw_text(350, 710, "Boot Timer: " + string(hasBootTimer));
	}
}