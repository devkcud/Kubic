/// @desc Drawing UI
if (debugMode) {
	draw_text_scribble(32, 32,
		"[scale, 1.5]Dev Tools (\"H\")\n"
		+ "[scale, 1][fa_top][fa_left]"
		+ "Run mode: " + string(runMode) + "\n"
		+ "Instances: " + string(instance_count)
	);
}

draw_text_scribble(room_width / 2, 64, "[wave][fa_center][fa_middle][fntHeader][scale, 1][sprKu]bic[/]");

draw_text_scribble(room_width / 2, 100, "[scale, 1][fa_center][[" + string(gamePoints) + "/" + string(gamePointsTotal) + "]");

draw_text_scribble(128, room_height - 120, "[fntTutorial][scale, 1.2][fa_top][fa_left]Pressione \"P\" para iniciar o \"modo corrida\".\n");

if (gamePoints == gamePointsTotal) {
	runMode = false;
	
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	
	draw_set_color(c_white);
	draw_text_scribble(room_width / 2, room_height / 2, "[fa_center][fntHeader][rainbow][fa_middle]Mandou bem![/]");
	draw_text_scribble(room_width / 2, room_height / 2 + 48, "[fa_center][fntScore][fa_middle]Pressione [pulse]Enter[/pulse] para continuar[/]");
	if (room != room_last && keyboard_check_pressed(vk_enter)) {
		gamePointsTotal = 0;
		gamePoints = 0;
		playedAudio = false;

		runMode = false;
		room_goto_next();
		
		show_debug_message(gamePoints);
		show_debug_message(gamePointsTotal);
		show_debug_message(runMode);
	}
	if (!playedAudio) audio_play_sound(sndSuccess, 1, false);
	playedAudio = true;
}