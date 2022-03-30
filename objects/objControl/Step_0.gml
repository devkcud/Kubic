/// @desc Logic
if (room == rmMenu) return;

if keyboard_check_pressed(ord("P")) {	
	if (runMode == true) {
		gamePointsTotal = 0;
		gamePoints = 0;
		playedAudio = false;
	
		room_restart();
		runMode = false;
		return;
	} else {
		if (instance_exists(objPush)) objPush.alarm[0] = objPush.timerCooldown * room_speed;
		runMode = true;
		return;
	}
}

if (!debugMode) return;
