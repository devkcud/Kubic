/// @desc Global variables

globalvar runMode, gamePoints, gamePointsTotal;
runMode = false;
gamePoints = 0;
gamePointsTotal = 0;

global.scoreList = [];

playedAudio = false; // Refered to the audio played when the level is complete.

placedBlocks = [];
scoreCollected = [];
spikesDestroyed = [];

globalvar walkTimerNormal, walkTimerFast, walkTimer, onDoubleSpeed;
walkTimerNormal = 0.3;
walkTimerFast = 0.15;
walkTimer = walkTimerFast;
onDoubleSpeed = false;

got = 0;
fin = [
	"Good job",
	"Good",
	"Nice work",
	"Nice",
	"Great work",
	"Great",
	"Congratulations",
	"Amazing",
];

