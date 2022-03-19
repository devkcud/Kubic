/// @desc Logic

// Debug Keys
if keyboard_check_pressed(ord("P")) {
	if (runMode == true) {
		gamePointsTotal = 0;
		gamePoints = 0;
	
		room_restart();
		runMode = false;
		return;
	}
	
	objPush.alarm[0] = 0.5 * room_speed;
	runMode = true;
	return;
}

if keyboard_check_pressed(ord("R"))	{
	gamePointsTotal = 0;
	gamePoints = 0;
	
	room_restart();
}
if keyboard_check_pressed(ord("T")) game_restart();
if keyboard_check_pressed(ord("H"))	debugMode = !debugMode;
