/// @desc Initializing

global.playableRooms = [
	rmFirst,
	rmFifth,
	rmSecond,
	rmThird,
	rmFourth
];

cursor_sprite = sprCursor;

instance_create_layer(x, y, "Instances", objCursor);

scribble_font_set_default("fntScore");

