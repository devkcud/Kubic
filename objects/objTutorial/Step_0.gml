/// @desc ?
i = clamp(i, 0, string_length(tutorialStrings[index]));
index = clamp(index, 0, array_length(tutorialStrings) - 1);

if (keyboard_check_pressed(vk_enter) && index < array_length(tutorialStrings) - 1) {
	index += 1;
	i = 0;
}

randomize();
var r = random_range(0.1, 0.7);
i += r;