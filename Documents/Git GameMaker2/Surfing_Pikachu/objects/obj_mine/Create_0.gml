alive = 1
spr_index = 0
armed = choose(0, 1)
y = sprite_height + random(room_height - 3/2 * sprite_height)
spr_ind = choose(0, 1)
direction = 180
speed = 10

startSelfDestructAnimation = function() {
	sprite_index = choose(spr_selfdestruct1, spr_selfdestruct2, spr_selfdestruct3)
	image_xscale *= 3; image_yscale *= 3
	alarm[0] = game_get_speed(gamespeed_fps)/2
}


var giveRightAnswer = choose(0, 0, 0, 0, 1)

while(true) {
	n = irandom(global.mn_max)
	m = irandom(global.mn_max)
	answerOption = global.questionOperator(n, m)
	if((answerOption == global.pikachu.answerNumber) == giveRightAnswer) {
		answerOptionString = global.player == PLAYERS.IDA ? 
		string(n) + global.questionOperatorString + string(m)
		: string(answerOption)
		break;
	}
}


