/// @desc Drawing UI

if (room == rmMenu) exit;
if (room == rmControls) exit;

draw_text_scribble(room_width / 2, 64, "[wave][fa_center][fa_middle][fntHeader][scale, 1][sprKu]bic[/]");

if (runMode == false) draw_text_scribble(room_width - 128, 128, "[fntTutorial][scale, 1.2][fa_bottom][fa_right]Press [blink]\"P\"[/blink] to start/stop [rainbow]\"run mode\"[/rainbow].");
if (runMode == true) scribble("[fntTutorial][scale, 1.2][fa_bottom][fa_right][rainbow]Run mode[/rainbow] on!").draw(room_width - 128, 128);

if (gamePoints == gamePointsTotal) {
	runMode = false;
	
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	draw_text_scribble(room_width / 2, room_height / 2, "[fa_center][fntHeader][rainbow][fa_middle]Good job![/]");
	draw_text_scribble(room_width / 2, room_height / 2 + 48, "[fa_center][fntScore][fa_middle]Press [pulse]Enter[/pulse] to continue.[/]");
	
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