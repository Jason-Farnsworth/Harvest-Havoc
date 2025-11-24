draw_self();

if (flashAlpha > 0){
	shader_set(shFlash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, flashColor, flashAlpha);
	shader_reset();
}

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
}