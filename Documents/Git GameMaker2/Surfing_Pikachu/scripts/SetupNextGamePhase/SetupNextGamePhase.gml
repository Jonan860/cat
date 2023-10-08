function setupNextGamePhase() {
	if(global.gamePhase > -1) global.game.save()
	
	global.gamePhase += 1
	switch(global.gamePhase) {
		case GAME_PHASES.PRE_PIDGEOT : global.background_music = sound_surfing_safari; break;
		case GAME_PHASES.PIDGEOT :
			global.pidgeot = instance_create_depth(room_width + sprite_get_width(spr_pidgeot)/2, room_height/2, depth, obj_pidgeot)
			global.background_music = sound_bird
			break;
		case GAME_PHASES.PRE_HAUNTER : global.background_music = sound_wipeout; break;
		case GAME_PHASES.HAUNTER :
			global.haunter = instance_create_depth(room_width + sprite_get_width(spr_haunter)/2, room_height/2, depth, obj_haunter)
			global.background_music = sound_sylar
			break;
		case GAME_PHASES.PRE_DRAGONITE : global.background_music = sound_miserlou; break;
		case GAME_PHASES.DRAGONITE :
			global.dragonite = instance_create_depth(room_width + sprite_get_width(spr_dragonite)/2, room_height/2, depth, obj_dragonite)
			global.background_music = sound_dragonborn
			break;
		case GAME_PHASES.PRE_ARMADA : global.background_music = sound_thunderthunder; break;
		case GAME_PHASES.ARMADA :
			global.background_music = sound_pikadrop
			var coninue_button = instance_create_depth(0, 0, 0, obj_button_continue)
			coninue_button.x = room_width - coninue_button.sprite_width/2
			coninue_button.y = coninue_button.sprite_height/2
	}
	show_debug_message("bossexist = {0}, is armada = {1}", instance_exists(obj_boss), global.gamePhase == GAME_PHASES.ARMADA)
	audio_play_sound(global.background_music, 0, ((global.gamePhase - GAME_PHASES.PRE_PIDGEOT) % 2) or global.gamePhase == GAME_PHASES.ARMADA)
}