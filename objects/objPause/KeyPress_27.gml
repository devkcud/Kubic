/// @desc Pausing the game

if (gamePoints == gamePointsTotal) exit;

global.isPaused = !global.isPaused;

if (surface_exists(screenshot)) surface_free(screenshot);
screenshot = surface_create(room_width, room_height);
surface_set_target(screenshot);
surface_copy(screenshot, 0, 0, application_surface);
surface_reset_target();

