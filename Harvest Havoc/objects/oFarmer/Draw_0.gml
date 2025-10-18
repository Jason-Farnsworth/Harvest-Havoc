draw_self();

if (flashAlpha > 0){
	shader_set(shFlash);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, flashColor, flashAlpha);
	shader_reset();
}