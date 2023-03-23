event_inherited()
global.Husmusen=self
roomMatch=room_husmusen
roomWorld=jansson_husmus_gym
camping=1
wait=1
defeated=0
path=0
name="Husmusen"
pokemon_left=0 //pokemon_left räknas upp i step event
lastroom_x=x; lastroom_y=y;
start_x=x; start_y=y;
rattata=instance_create_depth(opponent_x,opponent_y,0,obj_rattata)
raticate=instance_create_depth(opponent_x,opponent_y,0,obj_raticate)
marill=instance_create_depth(opponent_x,opponent_y,0,obj_marill)
pichu=instance_create_depth(opponent_x,opponent_y,0,obj_pichu)
raichu=instance_create_depth(opponent_x,opponent_y,0,obj_raichu)
sandshrew=instance_create_depth(opponent_x,opponent_y,0,obj_sandshrew)
ds_list_add(pokemonList,sandshrew,raichu,pichu,rattata,marill,raticate)
for(var i=0; i<ds_list_size(pokemonList); i++) {
var pokemon = ds_list_find_value(pokemonList,i)
with(pokemon){
x=opponent_x; y=opponent_y
owner=self
}
}
active_pokemon=sandshrew


scrChoosing=method(undefined,scrEnemyChoosing)
scrDefeated= method(undefined,scrEnemyDefeated)
scrWinning= method(undefined,scrEnemyWinning)
scrSwitchPokemon=method(undefined,scrEnemySwitchPokemon)
scrWorld=method(undefined,scrEnemyWorld)
scrMatch = method(undefined,scrEnemyMatch)

isAmberApproachable=function(){
var y_distance=abs(y-global.amber.y)
	var x_distance=abs(x-global.amber.x)
	var amber_distance=distance_to_object(global.amber)
var husmus_distance=distance_to_object(instance_find(obj_husmusen,0))/2
return y_distance<40 and amber_distance<husmus_distance or instance_find(obj_jansson,0).defeated
}