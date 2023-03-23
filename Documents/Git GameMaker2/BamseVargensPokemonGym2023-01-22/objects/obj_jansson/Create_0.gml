


event_inherited()
roomMatch=room_jansson
roomWorld=jansson_husmus_gym
global.Jansson=id
camping=1
meowth=instance_create_depth(opponent_x,opponent_y,0,obj_meowth)
espeon=instance_create_depth(opponent_x,opponent_y,0,obj_espeon)
mew=instance_create_depth(opponent_x,opponent_y,0,obj_mew)
ds_list_add(pokemonList,mew,espeon,meowth)
for(var i=0;i<ds_list_size(pokemonList);i++){
with(pokemonList[|i]){
owner=other.id
visible=0
}
}
meowth.visible=1


with(espeon){x=opponent_x; y=opponent_y}

active_pokemon=meowth
path=0
name="Jansson"
lastroom_x=x; lastroom_y=y;
start_x=x; start_y=y;
defeated=0
wait=1

scrChoosing=method(undefined,scrEnemyChoosing)
scrDefeated= method(undefined,scrEnemyDefeated)
scrWinning= method(undefined,scrEnemyWinning)
scrSwitchPokemon=method(undefined,scrEnemySwitchPokemon)
scrWorld=method(undefined,scrEnemyWorld)
scrMatch = method(undefined,scrEnemyMatch)

isAmberApproachable = function(){
var y_distance=abs(y-global.amber.y)
var x_distance=abs(x-global.amber.x)
with(global.amber){
var husmus_distance=distance_to_object(global.Husmusen)
var jansson_distance=distance_to_object(global.Jansson)
}

return y_distance<40 and jansson_distance<husmus_distance or global.Husmusen.defeated
}

getOpponent = function(){return global.amber}

/*
save = function(){
global.saveData._Jansson = {
	_x : x,
    _y : y,
	_start_x : start_x,
	_start_y : start_y,
	_lastroom_x : lastroom_x,
	_lastroom_y : lastroom_y,
	_wait : wait,
	_camping : camping,
    _defeated : defeated,
	_moveable : moveable,
	
	_meowth : meowth.save(),
	_espeon : espeon.save(),
	_mew : mew.save()
}
}

load = function(){
loadEnemyTrainer(global.saveData._Jansson)
}

