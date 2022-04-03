/// @desc Drawing tutorial

if (gamePoints == gamePointsTotal) exit;

scribble("[fa_top][fa_left][fntTutorial][scale, 0.8][" + objPlacer.blockImgName + "] [scale, 1.5]" + string(objPlacer.blocks[# objPlacer.placingIndex, 1]) + "[/]").draw(GRID_BUFFER, GRID_BUFFER - 38);

if (array_length(tutorialStrings) == 0) exit;

typist.sound([sndTypewriter], 999, 1, 2);
scribble("[fa_bottom][fa_center][fntTutorial][wobble][scale, 1][sprMrTuto][/wobble][scale, 1.5] " + tutorialStrings[index] + " [[" + string(index + 1)+ "/" + string(array_length(tutorialStrings)) + "]" + "[/]").draw(room_width / 2, room_height - 32, typist);
