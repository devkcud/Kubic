/// @desc Logic

// Debug Keys
if keyboard_check_pressed(ord("P"))	runMode = !runMode;
if keyboard_check_pressed(ord("R"))	room_restart();
if keyboard_check_pressed(ord("T")) game_restart();
if keyboard_check_pressed(ord("H"))	debugMode = !debugMode;
