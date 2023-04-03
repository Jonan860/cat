// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_game(){
	global.saveData._global = {
	phase : global.phase,
	turn : global.turn,
	background_music : global.background_music,
	enemy : global.enemy,
	last_room : global.last_room,
	move : global.move,
	numberofstartersleft : global.numberofstartersleft
	}
	
global.amber.save()

with(obj_jansson){save()}
with(obj_husmusen){save()}
with(obj_teddy){save()}

global.saveData._room = room_get_name(room)

var vararray = array_create(0)

array_push(vararray, global.saveData)

var json = json_stringify(vararray)
var buffer = buffer_create(string_byte_length(json)+1, buffer_fixed, 1)
buffer_write(buffer, buffer_string, json)
buffer_save(buffer, keyboard_string + ".sav")

buffer_delete(buffer)
}