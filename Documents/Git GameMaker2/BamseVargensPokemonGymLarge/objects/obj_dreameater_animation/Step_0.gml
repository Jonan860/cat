
image_xscale-=0.1/room_speed
image_yscale-=0.1/room_speed
if(global.phase="enemy dreameater" or global.phase="enemy dreameater2") ///2 för att stoppa creation
{
if(abs(x-global.enemy.active_pokemon.x)<9)
{ global.phase="enemy dreameater2"
	if(instance_number(obj_dreameater)==1){
		var damage=owner.damage_calculate(global.amber.active_pokemon)
	global.amber.active_pokemon.HP-=damage
	global.enemy.active_pokemon.HP=min(damage+global.enemy.active_pokemon.HP,global.enemy.active_pokemon.max_HP)
	scr_turn_decision()
	}
instance_destroy()
}
}