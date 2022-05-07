/// @desc Logic

if (room == rmMenu || room == rmControls|| gamePoints == gamePointsTotal) exit;

if (keyboard_check_pressed(ord("P"))) {
	runMode = !runMode;
	
	switch (runMode) {
		case false: {
			if (instance_exists(objPush)) instance_destroy(objPush);
		
			for (var i = 0; i < array_length(placedBlocks); i++) {
				var xPos = placedBlocks[i][0],
					yPos = placedBlocks[i][1],
					angle = placedBlocks[i][2];
				
				instance_create_layer(xPos, yPos, "Placed", objPush).image_angle = angle;
			}
		
			for (var i = 0; i < array_length(scoreCollected); i++) {
				var xPos = scoreCollected[i][0],
					yPos = scoreCollected[i][1],
					value = scoreCollected[i][2];
				
				with (instance_create_layer(xPos, yPos, "Instances", objScore)) {
					val = value;
					array_push(global.scoreList, val);
					array_sort(global.scoreList, function (a, b) { return a - b; });
				}
			}

			break;
		}
		
		case true: {
			placedBlocks = [];
			scoreCollected = [];
			
			gamePoints = 0;
		
			if (instance_exists(objPush))
				with (objPush) {
					array_push(other.placedBlocks, [x, y, image_angle]);
					alarm[0] = timerCooldown * room_speed;
				}

			break;
		}
	}
}
