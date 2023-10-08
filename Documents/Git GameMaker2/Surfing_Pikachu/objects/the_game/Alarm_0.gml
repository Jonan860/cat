if(room == Space) {
	if(global.gamePhase != GAME_PHASES.PRE_ARMADA and global.gamePhase != GAME_PHASES.ARMADA) {
		var obj = choose(obj_voltorb, obj_voltorb, obj_electrode, obj_electrode
		, obj_koffing, obj_koffing, obj_graveler, obj_geodude)
	} else {
		var obj = choose(obj_fearow, obj_vaporeon, obj_moltres)
	}
	instance_create_depth(room_width + 32, 0, 0, obj)
}