event_inherited()
roomMatch=room_jansson
roomWorld=jansson_husmus_gym
global.Jansson=self
camping=1
meowth=instance_create_depth(opponent_x,opponent_y,0,obj_meowth)
espeon=instance_create_depth(opponent_x,opponent_y,0,obj_espeon)
mew=instance_create_depth(opponent_x,opponent_y,0,obj_mew)
ds_list_add(pokemonList,meowth,espeon,mew)
for(var i=0;i<ds_list_size(pokemonList);i++){
owner=self
visible=0
}
meowth.visible=1


with(espeon){x=opponent_x; y=opponent_y}

active_pokemon=meowth
global.myTime = 1
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

isAmberApproachable()= function(){
var y_distance=abs(y-global.amber.y)
var x_distance=abs(x-global.amber.x)
var amber_distance=distance_to_object(global.amber)
var husmus_distance=distance_to_object(instance_find(obj_husmusen,0))/2-32
return y_distance<40 and amber_distance<husmus_distance or instance_find(obj_husmusen,0).defeated
}