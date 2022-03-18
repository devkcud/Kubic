/// @desc Drawing UI
if (debugMode) {
	draw_text_scribble(32, 32,
		"Dev info:"
		+ "[scale, 1]Run mode: " + string(runMode) + "\n"
		+ "[scale, 1]Instances: " + string(instance_count)
	);
}

draw_text_scribble(room_width / 2, 64, "[fa_center][fa_middle][fntHeader][scale, 1][sprKu]bic[/]");

draw_text_scribble(room_width / 2, 100, "[scale, 1][fa_center]Points: " + string(gamePoints) + "/" + string(gamePointsTotal));

str = "[scale, 1.5]Dev Tools\n"
	+ "[scale, 1][fa_bottom][fa_left]" // Configuration
	+ "Press \"P\" to toggle run mode.\n"
	+ "Press \"R\" to restart the room.";

draw_text_scribble(16, room_height - 16, str);

if (gamePoints == gamePointsTotal) {
	runMode = false;
	
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	
	draw_set_color(c_white);
	draw_text_scribble(room_width / 2, room_height / 2, "[fa_center][fntHeader][rainbow][fa_middle]Finished![/]");
}