/// @desc Draw timer

var config = "[fa_left][fa_top][scale, 3][fntTutorial]";

if (gamePoints == gamePointsTotal) config = "[fa_left][fa_top][scale, 3][fntTutorial][blink]";

var str = config
	+ (global.elapsedMinutes < 10 ? "0" : "") +  string(global.elapsedMinutes) + ":"
	+ (global.elapsedSeconds < 10 ? "0" : "") + string(global.elapsedSeconds) + ":"
	+ (global.elapsedMilliseconds < 10 ? "0" : "") +  string(global.elapsedMilliseconds);

var buff = 16;
scribble(str).draw(buff, buff);

