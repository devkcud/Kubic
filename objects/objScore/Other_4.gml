/// @desc Post creation setup

gamePointsTotal += val;

array_push(global.scoreList, val);
array_sort(global.scoreList, function (a, b) { return a - b; });

x = clamp(x, (GRID_BUFFER + GRID_WxH), room_width - (GRID_BUFFER + GRID_WxH));
y = clamp(y, (GRID_BUFFER + GRID_WxH), room_height - (GRID_BUFFER + GRID_WxH));

