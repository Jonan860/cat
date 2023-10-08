event_inherited()
if(alive and global.bossState == BOSS_STATES.AIMING and abs(y - global.pikachu.y) <= 5) {
	global.bossState = BOSS_STATES.ATTACKING
	speed = 0
	instance_create_depth(x - 0.19 * sprite_width, y - 0.21 * sprite_height, depth, obj_hyperball)
	alarm[2] = 2 * game_get_speed(gamespeed_fps)
}

