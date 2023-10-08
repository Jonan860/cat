if(alive) {
	alive = 0
	if(global.questionOperator(global.pikachu.m, global.pikachu.n) != answerOption) {
		hurtPika()
		startSelfDestructAnimation()
	} else {
		benefitPika()
		global.pikachu.createQuestionString()
		sprite_index = spr_ditto
		image_xscale = 1; image_yscale = 1
	}
}