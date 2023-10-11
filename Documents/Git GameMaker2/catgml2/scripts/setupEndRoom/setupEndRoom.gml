function setupEndRoom(_room) {
	global.tilesBlocked = 0
	with (obj_tile) { global.tilesBlocked += 1 * blocked}
	
	global.gameState = GAME_STATES.END
	audio_stop_sound(sound_game)
	room_goto(_room)
}