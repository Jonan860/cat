event_inherited()
if(global.bossState == BOSS_STATES.ATTACKING) {
	vulnerable = 1
}
if(alive and global.bossState == BOSS_STATES.AIMING and abs(y - global.pikachu.y) <= 5) {
	night_shades = 10
	global.bossState = BOSS_STATES.ATTACKING
	speed = 0
	alarm[2] = game_get_speed(gamespeed_fps)/3
}

