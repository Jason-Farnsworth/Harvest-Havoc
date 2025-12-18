global.timer_mil -= 1;

if global.timer_mil == -1{ //If 1/10 sec gets to 10, we increase sec by 1 and reset 1/10 sec
	global.timer_mil = 9;
	global.timer_sec -= 1;
}

if global.timer_sec == -1{ //If sec gets to 60, we increase min by 1 and reset sec
	global.timer_sec = 59;
	global.timer_min -= 1;
}

if !(global.timer_mil == 0 && global.timer_sec == 0 && global.timer_min == 0) alarm[0] = 6;
else global.timer_end = true;

//Change to counting down to 0
//Have a variable become true when timer reaches zero and have that be the condition in oControl