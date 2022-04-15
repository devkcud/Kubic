/// @desc Initializing variables

placingIndex = 0;

blocks = ds_grid_create(3, 4);

blocks[# 0, 0] = objPush;
blocks[# 0, 1] = objRoomManager.quantityOfPushs;
blocks[# 0, 2] = sprPush;
blocks[# 0, 3] = "sprPush";

blocks[# 1, 0] = objDirectional;
blocks[# 1, 1] = objRoomManager.quantityOfDirectional;
blocks[# 1, 2] = sprDirectional;
blocks[# 1, 3] = "sprDirectional";

blocks[# 2, 0] = objMultiply;
blocks[# 2, 1] = objRoomManager.quantityOfMultiplies;
blocks[# 2, 2] = sprMultiply;
blocks[# 2, 3] = "sprMultiply";

blockPlacing = blocks[# placingIndex, 0];
blockImg = blocks[# placingIndex, 2];
blockImgName = blocks[# placingIndex, 3];

imgAngle = 0;

xx = 0;
yy = 0;

minDist = 64;
