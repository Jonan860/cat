
if(room == Space) {
	if(!audio_is_playing(global.background_music)) {
		if(!instance_exists(obj_boss)) {
			setupNextGamePhase()
		}
	}
	if(alarm[0] <= 0) {
		alarm[0] = random(game_get_speed(gamespeed_fps) * 2)
	}
}

