/// @desc (De)Activate sharder

if (keyboard_check_pressed(ord("L"))) {
	isShadersActive = !isShadersActive;
	horrifi_enable(isShadersActive);
}

horrifi_chromaticab_set(true, 0.1);
horrifi_scanlines_set(true, 0.2);
horrifi_vhs_set(true, 0.2);
horrifi_vignette_set(true, 0.3, 1);
horrifi_noise_set(true, 0.15);

