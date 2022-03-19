/// @desc Set current pos to mouse pos
x = clamp(round(mouse_x / GRID_WxH) * GRID_WxH, (GRID_BUFFER + GRID_WxH), room_width - (GRID_BUFFER + GRID_WxH));
y = clamp(round(mouse_y / GRID_WxH) * GRID_WxH, (GRID_BUFFER + GRID_WxH), room_height - (GRID_BUFFER + GRID_WxH));
