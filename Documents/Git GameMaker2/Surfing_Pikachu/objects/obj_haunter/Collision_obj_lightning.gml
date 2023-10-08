if(other.owner == global.pikachu and vulnerable) {
	__background_set( e__BG.Index, 0, background_space )
	alarm[2] =- 1
	global.bossState = BOSS_STATES.EVADE
	direction = choose(90, 270)
	speed = movementSpeed
	alarm[0] = (200 + irandom(room_height - 200)) / movementSpeed
	alarm[1] = room_height * 3 / movementSpeed
	vulnerable = 0
}

