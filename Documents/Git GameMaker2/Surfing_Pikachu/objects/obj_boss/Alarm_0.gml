
if(global.bossState = BOSS_STATES.EVADE and hspeed == 0) {
	direction += 180
	alarm[0] = (200 + irandom(room_height - 200)) / movementSpeed
}

