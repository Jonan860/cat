event_inherited()
name="Amber"
depth=-10
moveable=1
active_pokemon=noone
charmander=instance_create_depth(x,y,0,obj_charmander)
squirtle=instance_create_depth(x,y,0,obj_squirtle)
geodude=instance_create_depth(x,y,0,obj_geodude)
mewtwo=instance_create_depth(x,y,0,obj_mewtwo)
bulbasaur=instance_create_depth(x,y,0,obj_bulbasaur)
pikachu=instance_create_depth(x,y,0,obj_pikachu)
ds_list_add(pokemonList,geodude,mewtwo,bulbasaur,charmander,squirtle,pikachu,)
for(var i=0;i<ds_list_size(pokemonList);i++){
var pokemon= ds_list_find_value(pokemonList,i)
with(pokemon){
x=match_x; y=match_y;
owner=other.id
}
}

world_x=noone; world_y=noone;

function itemConstructor(effect_,cost,object_) constructor{
count = 0;
effect= function(){
	count-=1
	with(active_pokemon){
	other.effect_()
	action_bar=max_action_bar
	}
	
	};
object=object_
}

fullHeal = new itemConstructor(,350,obj_full_heal)
burnHeal = new itemConstructor(burnHealEffect,200,obj_burn_heal)
potion = new itemConstructor(potionSuperPotionEffect,200,obj_potion)
iceHeal = new itemConstructor(iceHealEffect,200,obj_ice_heal)
awakening = new itemConstructor(awakeningEffect,200,obj_awakening)
superPotion = new itemConstructor(potionSuperPotionEffect,500,obj_super_potion)
paralyzeHeal = new itemConstructor(paralyzeHealEffect,200,obj_paralyze_heal)
antidote = new itemConstructor(antidoteEffect,200,obj_antidote)
potionBag =ds_list_create()
ds_list_add(potionBag,fullHeal,burnHeal,potion,iceHeal,awakening,superPotion,paralyzeHeal,
antidote)

for(var i=0;i<ds_list_size(potionBag);i++){
	var pot=potionBag[|i]
	pot.owner=id	
}

money=1000
defeated=0
global.spr_nightmare_frame=0
global.spr_paralyzed_frame=0

function scrAmberDefeated(){
if(defeated=1 and (room=room_teddy_match or room=room_husmusen or room=room_jansson)){
global.phase=PHASES.defeated
active_pokemon=noone
}
}


scrDefeated= method(undefined,scrAmberDefeated)
scrEnterBuilding = method(undefined,scr_amber_enter_building)
scrSwitchPokemon = method(undefined,scr_amber_switch_pokemon)
scrPerformStatusAilment=method(undefined,scr_amber_perform_status_ailment)
scrSetMovable= function(){if(room=jansson_husmus_gym and moveable=0 and y>700) moveable=1}
scrMovement=method(undefined,scr_amber_movement)

getOpponent = function(){return global.enemy}


save = function(){
global.saveData.Amber = {
	_x : x,
    _y : y,
	_world_x : world_x,
	_world_y : world_y,
	_money : money,
    _defeated : defeated,
	_moveable : moveable,
	_fullHeal : fullHeal,
	_burnHeal : burnHeal,
	_potion : potion,
	_iceHeal : iceHeal,
	_awakening : awakening,
	_superPotion : superPotion,
	_paralyzeHeal : paralyzeHeal,
	_antidote : antidote,
	_active_pokemon : noone
}

for(var i= 0; i < ds_list_size(pokemonList); i++){
var pokemon = pokemonList[|i]
pokemon.save()
}



}

load = function(){
var s = global.saveData.Amber
x = s._x
y = s._y
world_x=s._world_x; world_y=s._world_y;
money =s._money
defeated=s._defeated
moveable = s._moveable
active_pokemon = s._active_pokemon

fullHeal = s._fullHeal
burnHeal = s._burnHeal
potion = s._potion
iceHeal = s._iceHeal
awakening = s._awakening
superPotion = s._superPotion
paralyzeHeal = s._paralyzeHeal
antidote = s._antidote

for(var i = 0; i < ds_list_size(pokemonList); i++){
var pokemon = pokemonList[|i]
pokemon.load()
}
}



