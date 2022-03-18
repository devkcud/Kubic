/// @desc ?
if (debugMode) draw_text_scribble(32, 32, "[scale, 1]Run mode: " + string(runMode));

draw_text_scribble(room_width - 32, 32, "[scale, 1][fa_right]Points: " + string(gamePoints));

draw_text_scribble(room_width / 2, 64, "[fa_center][fa_middle][scale, 3]Kubic[/]");

draw_text_scribble(16, room_height - 16, "[scale, 1.5]Dev Tools\n[scale, 1][fa_bottom][fa_left]Press \"P\" to toggle run mode.\nPress \"R\" to restart the room.\nPress \"H\" to toggle debug mode.[/]");
