with(obj_hyperbeam) {
	instance_destroy()
}
global.bossState = BOSS_STATES.EVADE
direction = choose(90, 270)
speed = movementSpeed
alarm[0] = (200 + irandom(room_height - 200)) / movementSpeed
alarm[1] = room_height * 3 / movementSpeed


