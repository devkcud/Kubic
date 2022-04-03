/// @desc (De)Activating objects when paused

if (global.isPaused) {
	instance_deactivate_all(true);
	instance_activate_object(objShader);
} else instance_activate_all();

