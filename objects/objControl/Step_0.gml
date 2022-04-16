/// @desc Logic

if (room == rmMenu) exit;
if (room == rmControls) exit;

if keyboard_check_pressed(ord("P")) {	
	if (runMode == true) {
		gamePointsTotal = 0;
		gamePoints = 0;
		playedAudio = false;
		global.scoreList = [];
	
		room_restart();
		runMode = false;
	} else {
		if (instance_exists(objPush)) objPush.alarm[0] = objPush.timerCooldown * room_speed;
		runMode = true;
	}
}

