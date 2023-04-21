/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited()

camping = noone
defeated = noone
moveable = noone

load = function(saveStruct = global.saveData){
var s = variable_struct_get(saveStruct,name)
x = s._x
y = s._y
image_xscale = s._image_xscale
image_yscale = s._image_yscale
start_x=s._start_x; start_y=s._start_y;
lastroom_x = s._lastroom_x; lastroom_y = s._lastroom_y
wait = s._wait
camping = s._camping
defeated=s._defeated
moveable = s._moveable
visible = s._visible
speed = s._speed
direction = s._direction
for(var i = 0; i < ds_list_size(pokemonList); i++){
var pokemon = pokemonList[|i]
pokemon.load()
}

}

save = function(saveStruct = global.saveData){

var insert = {
	_x : x,
    _y : y,
	_image_xscale : image_xscale,
	_image_yscale : image_yscale,
	_start_x : start_x,
	_start_y : start_y,
	_lastroom_x : lastroom_x,
	_lastroom_y : lastroom_y,
	_wait : wait,
	_camping : camping,
    _defeated : defeated,
	_moveable : moveable,
	_active_pokemon : noone,
	_speed : speed,
	_direction : direction,
	_visible : visible 
}
variable_struct_set(saveStruct,name,insert)

for(var i= 0; i < ds_list_size(pokemonList); i++){
var pokemon = pokemonList[|i]
pokemon.save(saveStruct)
}

}

