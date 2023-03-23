
event_inherited()
start_x=x; start_y=y
roomWorld=room_teddy_gym
roomMatch=room_teddy_match
global.teddy=self
camping=1
jigglypuff=instance_create_depth(x,y,0,obj_jigglypuff)
drowsee=instance_create_depth(x,y,0,obj_drowsee)
gastly=instance_create_depth(x,y,0,obj_gastly)

ds_list_add(pokemonList,jigglypuff,drowsee,gastly)
for(i=0;i<ds_list_size(pokemonList);i++){
var pokemon=ds_list_find_value(pokemonList,i)
with(pokemon){
owner=other
x=opponent_x; y=opponent_y
}
}

active_pokemon=jigglypuff
global.myTime = 1
path=0
name="Teddy"
lastroom_x=x; lastroom_y=y;
defeated=0
wait=1

scrChoosing=method(undefined,scrEnemyChoosing)
scrDefeated= method(undefined,scrEnemyDefeated)
scrWinning= method(undefined,scrEnemyWinning)
scrSwitchPokemon=method(undefined,scrEnemySwitchPokemon)
scrWorld=method(undefined,scrEnemyWorld)
scrMatch = method(undefined,scrEnemyMatch)
isAmberApproachable=function(){return y==global.amber.y}
