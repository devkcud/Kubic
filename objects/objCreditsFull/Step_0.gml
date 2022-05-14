/// @desc Transition to menu

if (keyboard_check_pressed(vk_escape)) {
	TransitionStart(rmMenu, sqFadeOut, sqFadeIn);
	instance_activate_all();
	instance_deactivate_object(objControl);
}

