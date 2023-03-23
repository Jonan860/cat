
function scrEnemyWorld(){
if(!defeated and room=roomWorld){
var x_distance=abs(x-global.amber.x)
if(isAmberApproachable()){
with(obj_amber){moveable=0}
	
if(camping){
motion_set(180,x_distance/60)
camping=0
}
}
}

if(speed>0 and y!=global.amber.y){
speed=0
with(obj_amber){moveable=1}
camping=1
}
}





function scrEnemyChoosing(){
if(active_pokemon.active=0 and x>-sprite_width){
var pokemon_left=0
with(obj_pokemon){if(owner.name=global.enemy.name and alive){pokemon_left+=1}}

if(pokemon_left>0){
with(obj_pokemon){
if(owner.name=global.enemy.name and alive){
global.enemy.active_pokemon=self;
break;
}
}
global.phase=PHASES.switchPokemon
path_start(enemy_path,8,path_action_stop,1)
}
else{
global.phase=PHASES.defeated
with(obj_pokemon){scr_reset_attributes()}
defeated=1
}
}

if(active_pokemon.HP>0){
	if(!wait){
	wait=1
active_pokemon.scr_ai()
}

if(wait){if(alarm[0]=-1){alarm[0]=room_speed}}
}
}



function scrEnemyWinning(){
	with(active_pokemon){active=0}
	if(!instance_exists(obj_continue_button)){
instance_create_depth(room_width-196/2,32,0,obj_continue_button)
global.enemy.visible=1
	}}
	
	
	
	function scrEnemyDefeated() {if(!instance_exists(obj_continue_button)){
instance_create_depth(room_width-196/2,32,0,obj_continue_button)
global.enemy.visible=1
}}




function scrEnemySwitchPokemon(){
if(x<-sprite_width){
path_end()
global.phase=PHASES.pokeball
pokeball=instance_create_depth(x,y,0,obj_poke_ball)
pokeball.owner=self
x=opponent_x
visible=0
}
}

function scrEnemyMatch(){
	switch(global.turn){
	case TURNS.enemy:
	switch(global.PHASES){
case PHASES.choosing: scrChoosing()
case PHASES.defeated: scrDefeated()
case PHASES.switchPokemon: scrSwitchPokemon()
};

case TURNS.Amber: if(global.phase==PHASES.defeated){scrWinning()};
}
}


