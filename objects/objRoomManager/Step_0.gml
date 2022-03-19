/// @desc ?
if (array_length(tutorialStrings) == 0) return;

index = clamp(index, 0, array_length(tutorialStrings) - 1);

if (keyboard_check_pressed(vk_enter) && index < array_length(tutorialStrings) - 1) index += 1;
