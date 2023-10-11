 function scr_move() {
	var tileH = obj_tile.sprite_height; var tileW = obj_tile.sprite_width
	var coordinatesCopy = ds_list_create()
	ds_list_copy(coordinatesCopy, global.neighbourCoordinatesList)
	while(true) {
		if(ds_list_size(coordinatesCopy) == 0) {
			setupEndRoom(rm_win) break;
		}
		var random_index = irandom(ds_list_size(coordinatesCopy) - 1); 
		var coordinate = ds_list_find_value(coordinatesCopy, random_index)
		ds_list_delete(coordinatesCopy, random_index); 
		var newXpos = x + tileW * coordinate[0]; var newYpos = y + tileH * coordinate[1];
		var neighbourTile = instance_position(newXpos, newYpos, obj_tile)
		if (neighbourTile = noone) {
			setupEndRoom(rm_lose) break;
		} else if (!neighbourTile.blocked) {
			x = newXpos; y = newYpos;
			global.gameState = GAME_STATES.CLICK_TILE
			break;
		}
	}
}