if (!blocked and global.gameState = GAME_STATES.CLICK_TILE and instance_position(x, y, global.cat) == noone) {
	sprite_index = spr_blocked_tile;
	blocked = 1;
	global.gameState = GAME_STATES.CAT_MOVE		
}