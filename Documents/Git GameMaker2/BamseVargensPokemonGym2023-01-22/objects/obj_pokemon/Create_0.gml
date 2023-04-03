
HP=1
alive=1
owner=noone
defence_bonus=0; attack_bonus=0; evasion_bonus=0; accuracy_bonus=0;
active=0
level=5
max_action_bar=100
action_bar=0
experience=0
exp_needed=(power(level,4))*(level-4)  ///
xstart=x; ystart=y;
sound=sound_cow
confused=constructConfused()
asleep=constructAsleep()
paralyzed=constructParalyzed()
poisoned=constructPoisoned()
frozen=constructFrozen()
burned=constructBurned()
leeched=constructLeeched()
nightmared=constructNightmared()
statusAilmentList=ds_list_create()
ds_list_add(statusAilmentList,burned,poisoned,frozen,nightmared,leeched,asleep,paralyzed,confused)

ailmentIterator = 0

movesList=ds_list_create()

status_text=0

scr_ai=function(){}

scrMoveStart = function(){
for(var i=0; i<ds_list_size(movesList); i++){
	var move=ds_list_find_value(movesList,i)
	if(move.phase=global.phase and audio_is_playing(move.sound)){
	move.scrStart()
	}
	}
}

symptomize = function() {
confused.symptomatic = confused.applied * choose(0, 0, 1)
paralyzed.symptomatic = paralyzed.applied * choose(0, 0, 1)
}

getOpponent = function() {return owner.getOpponent().active_pokemon}

save = function(){
	
	var varMovesList = array_create(ds_list_size(movesList))
for(var i = 0; i < ds_list_size(movesList); i++){
varMovesList[i] = movesList[|i]
} 

saveDataEntry = {
	_HP : HP,
	_x : x,
	_y : y,
	_action_bar : action_bar,
	_level : level,
    _movesList : varMovesList,
	_alive : alive,
_active : active, 
_defence_bonus : defence_bonus, _attack_bonus : attack_bonus, _evasion_bonus : evasion_bonus, _accuracy_bonus : accuracy_bonus,
_level : level,
_experience : experience,
_exp_needed : exp_needed, ///
_xstart : xstart, _ystart : ystart,
_sound : sound,
_active_pokemon : owner.active_pokemon == id,
_confused : confused,
_asleep : asleep,
_paralyzed : paralyzed,
_poisoned : poisoned,
_frozen : frozen,
_burned : burned,
_leeched : leeched,
_nightmared : nightmared,
_status_text : status_text
}

variable_struct_set(global.saveData,owner.name + "." + name, saveDataEntry)

}

load = function(struct){
	struct= variable_struct_get(global.saveData,owner.name + "." + name)
	HP = struct._HP
	x = struct._x
	y = struct._y
	level = struct._level
	action_bar = struct._action_bar
active = struct._active
	for(var i = 0; i < array_length(struct._movesList); i++){
    movesList[|i].load(struct._movesList[i])
	}
	
	
	if(struct._active_pokemon){
		owner.active_pokemon = id
		visible = 1
		owner.visible = 0
		if(owner == global.amber and instance_exists(obj_move_button)){
		with(obj_move_button){instance_destroy()}
		scr_create_move_buttons()}
		
		}
	
	alive = struct._alive
defence_bonus = struct._defence_bonus; attack_bonus = struct._attack_bonus; evasion_bonus = struct._evasion_bonus; accuracy_bonus = struct._accuracy_bonus;
level = struct._level
experience = struct._experience
exp_needed = struct._exp_needed ///
xstart = struct._xstart; ystart = struct._ystart;
sound = struct._sound;
status_text = struct._status_text
confused.load(struct._confused)
asleep.load(struct._asleep)
paralyzed.load(struct._paralyzed)
poisoned.load(struct._poisoned)
frozen.load(struct._frozen)
burned.load(struct._burned)
leeched.load(struct._leeched)
nightmared.load(struct._nightmared)
/*ds_list_destroy(statusAilmentList)
statusAilmentList = ds_list_create()
ds_list_add(statusAilmentList,confused,asleep,paralyzed,poisoned,frozen,burned,leeched,nightmare)
for(var i = 0; i < ds_list_size(statusAilmentList); i++){
statusAilmentList[|i].owner = id
}*/

}



