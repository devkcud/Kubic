/// @desc Initializing

global.playableRooms = [
	rmFirst,
	rmSecond,
	rmThird,
	rmFourth,
	rmFifth,
];

cursor_sprite = sprCursor;

instance_create_layer(x, y, "Instances", objCursor);

scribble_font_set_default("fntScore");

