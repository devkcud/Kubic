/// @desc Drawing UI

if (room == rmMenu || room == rmControls) exit;

if (gamePoints != gamePointsTotal) {
	var onDoubleSpeedText =
		onDoubleSpeed
			? "[fntTutorial][fa_bottom][fa_right]Press [blink]O[/blink] to disable [rainbow]double speed[/rainbow]."
			: "[fntTutorial][fa_bottom][fa_right]Press [blink]O[/blink] to enable [rainbow]double speed[/rainbow].";
	
	scribble(onDoubleSpeedText).draw(room_width - GRID_BUFFER, GRID_BUFFER);
	
	var runModeText =
		runMode
			? "[fntTutorial][fa_bottom][fa_center]Press [blink]P[/blink] to stop [rainbow]run mode[/rainbow]."
			: "[fntTutorial][fa_bottom][fa_center]Press [blink]P[/blink] to start [rainbow]run mode[/rainbow].";
	
	scribble(runModeText).draw(room_width / 2, GRID_BUFFER);
	
	if (onDoubleSpeed) {
		horrifi_chromaticab_set(true, 0.15);
		horrifi_scanlines_set(true, 0.5);
		horrifi_vhs_set(true, 0.3);
		horrifi_noise_set(true, 0.2);

		scribble("[scale, 4][fa_bottom][fa_right][blink]>> 2X[/]").draw(room_width - 32, 128 - 32);
	}
}

if (gamePoints == gamePointsTotal) {	
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	randomize();
	if (gotFin == 0) gotFin = fin[irandom_range(0, array_length(fin) - 1)];
	
	draw_text_scribble(room_width / 2, room_height / 2, "[fa_center][fntHeader][rainbow][fa_middle]" + gotFin + "![/]");
	draw_text_scribble(room_width / 2, room_height / 2 + 48, "[fa_center][fntScore][fa_middle]Press [pulse]Enter[/pulse] to continue.[/]");

	if (room == rmTest) {
		if (keyboard_check_pressed(vk_enter)) {
			TransitionStart(rmCredits, sqFadeOut, sqFadeIn);
			
			gamePointsTotal = 0;
			gamePoints = 0;
			playedAudio = false;
		
			objPlacer.placingIndex = 0;
			objPlacer.imgAngle = 0;
		}

		if (!playedAudio) audio_play_sound(sndSuccess, 1, false);
		playedAudio = true;
	} else {
		runMode = false;
	
		if (keyboard_check_pressed(vk_enter)) {
			var rm;
		
			array_delete(global.playableRooms, 0, 1);
		
			rm = rmCredits;
			if (array_length(global.playableRooms) > 0) rm = global.playableRooms[0];
				
			TransitionStart(rm, sqFadeOut, sqFadeIn);

			gamePointsTotal = 0;
			gamePoints = 0;
			playedAudio = false;
			
			onDoubleSpeed = false;
		
			objPlacer.placingIndex = 0;
			objPlacer.imgAngle = 0;
		}
	
		if (!playedAudio) audio_play_sound(sndSuccess, 1, false);
		playedAudio = true;
	}
}
