/// @desc (De)Activate sharder

if (keyboard_check_pressed(ord("L"))) {
	isShadersActive = !isShadersActive;
	horrifi_enable(isShadersActive);
}

