/// @desc Setting image alpha after winning

draw_self();

if (place_meeting(x, y, objPush)) scribble("[fa_center]Col").draw(x, y - 32);

if (gamePoints == gamePointsTotal) image_alpha = 0.3;
