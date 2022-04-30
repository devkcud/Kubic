/// @desc Draw the controls

scribble("[fa_center][fntHeader][wave][rainbow]Controls[/]").draw(room_width / 2, 128);
scribble(
	"[fa_center][fntScore][scale, 1.5]"
	+ "\"[pulse]Left Mouse Button[/pulse]\" - Place blocks at mouse position." + "\n"
	+ "\"[pulse]Right Mouse Button[/pulse]\" - Remove the currently hovered block." + "\n"
	+ "\"Teclas [pulse]A[/pulse] & [pulse]D[/pulse] keys\" - Rotate the block before placed." + "\n"
	+ "\"Teclas [pulse]W[/pulse] & [pulse]S[/pulse] keys\" - Change the block being placed." + "\n"
	+ "\"Tecla [pulse]L[/pulse] key\" - Deactivate shaders (Filters)."
	+ "[/]"
).draw(room_width / 2, room_height / 2 - 128);

scribble("[fa_center][fntTutorial]Press [pulse]Esc[/pulse] to return to the main menu.[/]").draw(room_width / 2, room_height - 32);

