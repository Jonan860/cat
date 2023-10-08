
if(other.owner == global.pikachu) {
	if(alive) {
		alive = 0
		if(global.questionOperator(global.pikachu.m, global.pikachu.n) != answerOption) {
			sprite_index = choose(spr_selfdestruct1, spr_selfdestruct2, spr_selfdestruct3)
			alarm[0] = game_get_speed(gamespeed_fps) * 0.02
			global.pikachu.createQuestionString()
		} else {
			sprite_index = spr_ditto
			image_xscale = 1; image_yscale = 1
		}
	}
	other.alive = 0
	instance_destroy(other)
}

