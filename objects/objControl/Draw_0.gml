/// @desc Drawing UI

if (room == rmMenu) exit;
if (room == rmControls) exit;

draw_text_scribble(room_width / 2, 64, "[wave][fa_center][fa_middle][fntHeader][scale, 1][sprKu]bic[/]");

draw_text_scribble(room_width - 128, 128, "[fntTutorial][scale, 1.2][fa_bottom][fa_right]Pressione [blink]\"P\"[/blink] para iniciar/parar o [rainbow]\"modo corrida\"[/rainbow].");

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
		var rm = -1;
		
		array_delete(global.playableRooms, 0, 1);
		if (array_length(global.playableRooms) > 0) rm = global.playableRooms[0];
		else rm = rmCredits;
		
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