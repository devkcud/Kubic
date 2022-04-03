/// @desc Changing tutorial index

if (array_length(tutorialStrings) == 0) exit;

index = clamp(index, 0, array_length(tutorialStrings) - 1);

if (keyboard_check_pressed(vk_enter)) {
	if (typist.get_state() == 1 && index < array_length(tutorialStrings) - 1) index += 1;
	else typist.skip();
}
