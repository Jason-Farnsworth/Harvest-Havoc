var pos_x = 1340
repeat (global.player_lives){
	draw_sprite_ext(sHeart_Icon, 0, pos_x, 50, 2, 2, 0, c_white, 1);
	pos_x = pos_x - 65;
}

global.timer = "";
global.timer += string(global.timer_min);
global.timer += ":";
if (global.timer_sec < 10) global.timer += "0"+string(global.timer_sec)
if (global.timer_sec > 9) global.timer += "" + string(global.timer_sec)
global.timer += ".";
global.timer += string(global.timer_mil);