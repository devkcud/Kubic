/// @desc ?
if (!debugMode) return;

draw_text_scribble(room_width - 32, 16,
	"[fa_top][fa_right]" // General Configuration
	+ "[scale, 1.5]Dev Tools\n" // Title
	+ "[scale, 1]"
	+ "Run mode: " + string(runMode) + "\n"
	+ "Instances: " + string(instance_count) + "\n"
	+ "Locked FPS: " + string(fps) + " | " + "Real FPS: " + string(fps_real) + "\n"
);
	
draw_text_scribble(room_width / 2, 100, "[scale, 1][fa_center][[" + string(gamePoints) + "/" + string(gamePointsTotal) + "]");
