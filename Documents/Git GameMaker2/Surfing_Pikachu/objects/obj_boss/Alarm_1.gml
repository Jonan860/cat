if(global.bossState == BOSS_STATES.EVADE) {
	global.bossState = BOSS_STATES.AIMING
}
else if(global.bossState == BOSS_STATES.AIMING and hspeed == 0) {
	global.bossState = BOSS_STATES.EVADE
	direction = choose(90, 270)
	alarm[0] = (200 + irandom(room_height - 200)) / movementSpeed
	alarm[1] = room_height * 3 / movementSpeed
}

