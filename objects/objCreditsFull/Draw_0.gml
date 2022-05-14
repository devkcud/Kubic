/// @desc Draw credits

scribble("[fa_center][fntHeader][rainbow][wave]Credits[/wave][/rainbow]\n[fntScore]Created by [pulse]Lost Duck[/pulse][/]").draw(room_width / 2, 128);
scribble(
	"[fa_center][fa_bottom][fntScore]"
	+ "[scale, 1.5]Original development team:[/scale]" + "\n"
	+ "André Luis (Programming & Art)" + "\n"
	+ "André Vitor (Level Design)" + "\n"
	+ "Carlos Daniel (SFX & Main Beta Tester)"
	+ "[/]"
).draw(room_width / 2, room_height / 2);
scribble(
	"[fa_center][fa_top][fntScore]"
	+ "[scale, 1.5]Beta testers:[/scale]" + "\n"
	+ "Carlos Daniel" + "\n"
	+ "Pipoca" + "\n"
	+ "Naty Hardy" + "\n"
	+ "MiNino" + "\n"
	+ "Deo"
	+ "[/]"
).draw(room_width / 2, room_height / 2 + 32);

scribble("[fa_center][fntScore]Press [pulse]Esc[/pulse] to return to return to the main menu.[/]").draw(room_width / 2, room_height - 128);

