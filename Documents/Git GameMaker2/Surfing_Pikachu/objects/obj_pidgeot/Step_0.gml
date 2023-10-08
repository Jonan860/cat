event_inherited()
if(alive and global.bossState = BOSS_STATES.AIMING and abs(y - global.pikachu.y) <= 5) {
	global.bossState = BOSS_STATES.ATTACKING
	gust = 10
	speed = 0
	alarm[2] = game_get_speed(gamespeed_fps)/3
}


