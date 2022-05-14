/// @desc Draw timer

var config = "[fa_center][fa_top][scale, 3][fntTutorial]";

if (gamePoints == gamePointsTotal) config = "[fa_center][fa_top][scale, 3][fntTutorial][blink]";

var str = config
	+ (global.elapsedMinutes < 10 ? "0" : "") +  string(global.elapsedMinutes) + ":"
	+ (global.elapsedSeconds < 10 ? "0" : "") + string(global.elapsedSeconds) + ":"
	+ (global.elapsedMilliseconds < 10 ? "0" : "") +  string(global.elapsedMilliseconds);

scribble(str).draw(room_width / 2, 16);

