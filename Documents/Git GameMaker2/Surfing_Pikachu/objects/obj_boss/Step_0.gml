if(global.bossState == BOSS_STATES.ENTER and x < room_width - sprite_width / 2) {
	global.bossState = BOSS_STATES.EVADE
	direction = choose(90,270)
	speed = movementSpeed
	alarm[0] = (200 + irandom(room_height - 200)) / movementSpeed
	alarm[1] = room_height * 3 / movementSpeed
}

alive = HP > 0

if(!alive) {
	speed = 1
	direction = 0
	if(x > room_width + sprite_width/2) {
		instance_destroy()
	}
}
if(y > room_height - sprite_height/2) {
	direction = 90
}
if(y < sprite_height/2) {
	direction = 270
}
if(hspeed > 0) {
	vspeed = 0
}
if(alive and global.bossState = BOSS_STATES.AIMING and abs(y - global.pikachu.y) > 5) {
	move_towards_point(x, global.pikachu.y, movementSpeed)
}


