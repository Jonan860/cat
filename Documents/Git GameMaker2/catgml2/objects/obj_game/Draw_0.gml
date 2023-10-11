if(room == rm_win or room == rm_lose) {
	var text = "Number of tiles blocked = " + string(global.tilesBlocked)
	draw_text_color(room_width - 1.2 * string_width(text), room_height - 2 * string_height(text), text, c_green, c_green, c_green, c_green,1)
}