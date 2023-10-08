if(night_shades>0) {
	var background = night_shades % 2 ? bg_night_shade : background_space
		__background_set( e__BG.Index, 0, background )
		night_shades -= 1
		alarm[2] = game_get_speed(gamespeed_fps)/3
} else if(night_shades == 0) {
	global.pikachu.HP -= 25
	global.bossState = BOSS_STATES.EVADE
	direction = choose(90,270)
	speed = movementSpeed
	alarm[0] = (200 + irandom(room_height - 200)) / movementSpeed
	alarm[1] = room_height * 3 / movementSpeed
	vulnerable = 0
}


