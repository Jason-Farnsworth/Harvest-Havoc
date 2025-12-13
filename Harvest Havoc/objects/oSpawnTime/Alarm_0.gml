global.timer_mil += 1;

if global.timer_mil == 10{ //If 1/10 sec gets to 10, we increase sec by 1 and reset 1/10 sec
	global.timer_mil = 0;
	global.timer_sec += 1;
}

if global.timer_sec == 60{ //If sec gets to 60, we increase min by 1 and reset sec
	global.timer_sec = 0;
	global.timer_min += 1;
}

alarm[0] = 6;