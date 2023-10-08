sonicboom = instance_create_depth(x - sprite_width/2, y, 0, obj_sonicboom, {owner : id})
with(sonicboom) {
	speed = 15
	direction = 180 - 60 + irandom(120)
}
gust -= 1
if( gust > 0) {
	alarm[2] = game_get_speed(gamespeed_fps)/3
}
if(gust = 0) {
	global.bossState = BOSS_STATES.EVADE
	direction = choose(90, 270)
	speed = movementSpeed
	alarm[0] = (200 + irandom(room_height - 200)) / movementSpeed
	alarm[1] = room_height * 3 / movementSpeed
}

