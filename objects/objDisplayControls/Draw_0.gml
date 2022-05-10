/// @desc Draw the controls

scribble("[fa_center][fntHeader][wave][rainbow]Controls[/]").draw(room_width / 2, 128);
scribble(
	"[fa_left][fntScore]"
	+ "[scale, 1.5][pulse]Left Mouse Button[/pulse][/scale] - Place blocks at mouse position." + "\n"
	+ "[scale, 1.5][pulse]Right Mouse Button[/pulse][/scale] - Remove the currently hovered block." + "\n"
	+ "[scale, 1.5][pulse]A[/pulse] & [pulse]D[/pulse][/scale] keys - Rotate the block before placed." + "\n"
	+ "[scale, 1.5][pulse]W[/pulse] & [pulse]S[/pulse][/scale] keys - Change the block being placed." + "\n"
	+ "[scale, 1.5][pulse]L[/pulse][/scale] key - Disable/Enable shaders (Filters)."
	+ "[/]"
).draw(round(room_width / 5), room_height / 2 - 128);

scribble("[fa_center][fntTutorial]Press [pulse]Esc[/pulse] to return to the main menu.[/]").draw(room_width / 2, room_height - 32);

