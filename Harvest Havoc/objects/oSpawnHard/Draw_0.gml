var pos_x = 1350
repeat (global.player_lives){
	draw_sprite_ext(sHeart_Icon, 0, pos_x, 50, 2, 2, 0, c_white, 1);
	pos_x = pos_x - 75;
}