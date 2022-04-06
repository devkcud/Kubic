/// @desc Drawing menu

if (!room == rmMenu) exit;

// Drawing fake grid
draw_set_alpha(0.3);

var buffer = 128,
	grid = 32;

// Horizontal
for (var i = 0; i < room_height - buffer * 2; i += grid) {
	draw_line_width(buffer, i + buffer, room_width - buffer, i + buffer, 2);
}

// Vertical
for (var i = 0; i < room_width - buffer * 2; i += grid) {
	draw_line_width(i + buffer, buffer, i + buffer, room_height - buffer, 2);
}

draw_set_alpha(1);

draw_rectangle(buffer, buffer, room_width - buffer, room_height - buffer, true);

// Drawing fake game

draw_sprite(sprFakeGame, round(image_index / (0.45 * room_speed)), room_width / 2 + 16, room_height / 2 + 16);

// Drawing side

draw_set_color(make_color_rgb(16, 16, 16));
draw_rectangle(0, 0, round(room_width / 3), room_height, false);
draw_set_color(c_white);

draw_text_scribble(round(room_width / 6), 128, "[wave][scale, 1.5][fntHeader][fa_middle][fa_center][sprKu]bic[/]");
draw_text_scribble(round(room_width / 6), 128 + 64, "[fntScore][fa_middle][fa_center]Um jogo baseado em cubos[/]");

draw_text_scribble(32, room_height / 2, "[fa_middle][fa_left][fntScore][rainbow][scale, 1.4]Enter[/scale][/rainbow] para iniciar.[/]");
// draw_text_scribble(32, room_height / 2 + 24, "[fa_middle][fa_left][fntScore][rainbow][scale, 1.4]X[/scale][/rainbow] para ir às configurações.[/]");
draw_text_scribble(round(room_width / 6), room_height - 32, "[fa_center][fa_bottom][fntScore]Criado por\nAndré Luis, André Vitor & Carlos Daniel[/]");

