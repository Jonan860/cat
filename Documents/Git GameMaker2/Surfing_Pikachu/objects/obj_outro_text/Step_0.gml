event_inherited();
if(timer > game_get_speed(gamespeed_fps) * 10) {
	row += 1
	timer = 0
}

if(row == rows + 1) {
	room_goto_next()
	instance_destroy()
}

