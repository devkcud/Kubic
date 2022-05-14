/// @desc Initializing

global.playableRooms = [
	rmFirst,
	rmSecond,
	rmThird,
	rmFourth,
	rmFifth,
	rmLevel1,
	rmLevel2,
	rmLevel3,
];

cursor_sprite = sprCursor;

instance_create_layer(x, y, "Instances", objCursor);

scribble_font_set_default("fntScore");

