if(room == room_bamse) {
	image_xscale = 0.05 * y / 64; image_yscale = 0.07 * y / 64
} else {
	if(global.gamePhase < GAME_PHASES.PRE_ARMADA) {
		HP -= poison_count / (2 * game_get_speed(gamespeed_fps))
	}
	distance += 1
	var xdir = keyboard_check(vk_right) - keyboard_check(vk_left)
	var ydir = keyboard_check(vk_down) - keyboard_check(vk_up)
	var forward_positionX = x + xdir * sprite_width/2
	var forward_positionY = y + ydir * sprite_height/2
	xdir = xdir * (forward_positionX < room_width and forward_positionX > 0)
	ydir = ydir * (forward_positionY < room_height and forward_positionY > 0)
	direction = point_direction(0, 0, xdir, ydir)
	speed = abs(xdir) + abs(ydir) > 0 ?  15 : 0
	 
	if(audio_is_playing(sound_pikadrop) and alarm[1] <= 0) {
		alarm[1] = game_get_speed(gamespeed_fps)
	}
	if(HP <= 0 and room != room_gameover) {
		room_goto(room_gameover)
	}
	if(global.player = PLAYERS.BEBIS) {
		HP = min(max_HP, HP + 1 / game_get_speed(gamespeed_fps))	
	}
}




