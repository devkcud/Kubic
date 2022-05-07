/// @desc Drawing UI

if (room == rmMenu || room == rmControls) exit;

if (gamePoints != gamePointsTotal) {
	if (runMode == false) scribble("[fntTutorial][scale, 1.2][fa_bottom][fa_center]Press [blink]P[/blink] to start [rainbow]run mode[/rainbow].").draw(room_width / 2, 128);
	else scribble("[fntTutorial][scale, 1.2][fa_bottom][fa_center]Press [blink]P[/blink] to stop [rainbow]run mode[/rainbow].").draw(room_width / 2, 128);
}

if (gamePoints == gamePointsTotal) {	
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	draw_set_color(c_white);

	draw_text_scribble(room_width / 2, room_height / 2, "[fa_center][fntHeader][rainbow][fa_middle]Good job![/]");
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
		
			objPlacer.placingIndex = 0;
			objPlacer.imgAngle = 0;
		}
	
		if (!playedAudio) audio_play_sound(sndSuccess, 1, false);
		playedAudio = true;
	}
}
