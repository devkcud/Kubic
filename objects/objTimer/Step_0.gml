/// @desc Run timer

if (gamePoints == gamePointsTotal) exit;

if (countTimer == true) {
	global.elapsedMilliseconds += 1;
	
	if (global.elapsedMilliseconds >= room_speed) {
		global.elapsedMilliseconds = 0;
		global.elapsedSeconds += 1;
		
		if (global.elapsedSeconds >= 60) {
			global.elapsedSeconds = 0;
			global.elapsedMinutes += 1;
		}
	}
}

