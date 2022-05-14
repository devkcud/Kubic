/// @desc Drawing menu

if (room != rmMenu) exit;

// Drawing side

draw_set_color(make_color_rgb(16, 16, 16));
draw_rectangle(0, 0, round(room_width / 3), room_height, false);
draw_set_color(c_white);

scribble(
	"[wave][scale, 1.5][fntHeader][fa_middle][fa_center][sprKu]bic[/]" + "\n"
	+ "[fntScore][fa_middle][fa_center]A game based in cubes[/]"
).draw(round(room_width / 6), 128);

scribble(
	"[fa_middle][fa_left][fntScore]"
	+ "[rainbow][scale, 1.4]Enter[/scale][/rainbow] to start." + "\n"
	+ "[rainbow][scale, 1.4]C[/scale][/rainbow] to see the controls." + "\n"
	+ "[rainbow][scale, 1.4]T[/scale][/rainbow] to see credits."
	+ "[/]"
).draw(round(room_width / 12), room_height / 2);

scribble("[fa_center][fa_bottom][fntScore]Created by\n[scale, 2]LostDuck[/scale]").draw(round(room_width / 6), room_height - 32);

