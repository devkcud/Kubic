/// @desc Initializing variables

placingIndex = 0;

blocks = ds_grid_create(5, 3);

blocks[# 0, 0] = objPush;
blocks[# 0, 1] = objRoomManager.quantityOfPushs;
blocks[# 0, 2] = sprPush;

blocks[# 1, 0] = objFlipRight;
blocks[# 1, 1] = objRoomManager.quantityOfFlipsRight;
blocks[# 1, 2] = sprFlipRight;

blocks[# 2, 0] = objFlipLeft;
blocks[# 2, 1] = objRoomManager.quantityOfFlipsLeft;
blocks[# 2, 2] = sprFlipleft;

blocks[# 3, 0] = objMultiply;
blocks[# 3, 1] = objRoomManager.quantityOfMultiplies;
blocks[# 3, 2] = sprMultiply;

blocks[# 4, 0] = objRotate;
blocks[# 4, 1] = objRoomManager.quantityOfRotates;
blocks[# 4, 2] = sprRotate;

blockPlacing = blocks[# placingIndex, 0];
blockQuant = blocks[# placingIndex, 1];
blockImg = blocks[# placingIndex, 2];

imgAngle = 0;

xx = 0;
yy = 0;

minDist = 64;
