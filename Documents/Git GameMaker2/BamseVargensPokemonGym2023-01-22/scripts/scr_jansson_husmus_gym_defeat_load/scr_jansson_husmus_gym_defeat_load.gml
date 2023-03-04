function scr_jansson_husmus_gym_defeat_load() {
	if((room=jansson_husmus_gym or room=room_teddy_gym) and global.phase=PHASES.defeated and global.turn==TURNS.Amber)
   {global.amber.x=room_width/2
	global.amber.y=room_height-sprite_height
	global.amber.visible=1
	global.amber.moveable=1
	if(room=jansson_husmus_gym ){
	var jansson=instance_find(obj_jansson,0)
	var husmusen=instance_find(obj_husmusen,0)
	with(jansson){
	x=start_x; y=start_y
	camping=1
	}
	with(husmusen){
	x=start_x; y=start_y
	camping=1
	}
	}
	else{
	with(global.enemy){
	x=start_x; y=start_y
	camping=1
	}
	}
	with(obj_pokemon){scr_reset_attributes()}
	with(global.amber){potionBagLoad()}

	var i
	i=0
	with(obj_starters){
		if(global.saved_HP[i]>0){HP=min(global.saved_HP[i]+daycare*scr_get_daycare_heal(),max_HP)}
		else{
		HP=daycare*scr_get_daycare_heal()/2
		alive=1
		}
	action_bar=max_action_bar
	i+=1
	if(HP>0){alive=1}
	}
	with(obj_opponent){
	HP=max_HP
	alive=1
	action_bar=max_action_bar
	}
	global.phase=PHASES.world
	}

	if(room==jansson_husmus_gym or room==room_teddy_gym){
	if(world_x!=noone and world_y!=noone){
		if(defeated=0){x=world_x; y=world_y}
		else{
			x=room_width/2
			y=room_height-sprite_height
		defeated=0
	
		if(room==jansson_husmus_gym){
	global.Jansson.defeated=0
	global.Husmusen.defeated=0
		}
		if(room==room_teddy_gym){global.teddy.defeated=0}
		}
	visible=1
	moveable=1
	if(active_pokemon!=noone){active_pokemon.active=0}
	
	active_pokemon=noone
	}
	}
}
