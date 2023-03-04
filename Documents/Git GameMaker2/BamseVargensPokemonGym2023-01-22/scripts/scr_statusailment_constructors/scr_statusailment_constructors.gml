
 function scrStatusAilmentConstructor(sound_=sound_growl,animator_=noone,text_,scrStart_=scrStatusAilmentStandardStart,scrEffect_=ailmentStandardEffect ,scrEnd_=ailmentStandardEnd)  constructor {
applied = 0
symptomatic = 0
turnsLeft=0
animator=animator_
sound = sound_
text=text_
scrStart = method(undefined,scrStart_)
scrEnd = method(undefined,scrEnd_)
scrEffect=method(undefined,scrEffect_)
scrReset = function(){
applied=0
turnsLeft=0
owner=other.id
}
}

function constructAsleep(){return new scrStatusAilmentConstructor(sound_sleep,sleep_animator,"slp",,ailmentStandardEnd)}
function constructBurned(){return new scrStatusAilmentConstructor(,,"brn",,,,)}
function constructPoisoned(){return new scrStatusAilmentConstructor(,,"psn",,,)}
function constructParalyzed(){return new scrStatusAilmentConstructor(sound_paralyzed,paralyzed_animator,"par", scrStartParalyzedAnimation,,)}
function constructLeeched(){return new scrStatusAilmentConstructor(,,"lch",,,)}
function constructNightmared(){return new scrStatusAilmentConstructor(sound_nightmare,,"",,nightmaredEffect,)}
function constructConfused(){return new scrStatusAilmentConstructor(sound_confused, obj_confused_animator,"cnf",,,)}
function constructFrozen(){
	var frozen = new scrStatusAilmentConstructor(,,"frz",,,)
	variable_struct_set(frozen,"unfreeze",0)
	return frozen
	}

function scrStatusAilmentStandardStart(){
if(scrImplementable()){
audio_pause_sound(global.background_music)
audio_play_sound(sound,0,0)
instance_create_depth(x,y,-1,animator)
}
turnsLeft=max(turnsLeft-1,0)
}

function scrConfusedEffect() {
	with(global.tackle){
	owner=other.id
	other.HP-=damage_calculate(other)
	owner=noone
	}
}

function nightmaredEffect(){with(owner){HP-=max_HP/8}

function scrAsleepStart(){
	awakening=turnsLeft==0
	if(scrImplementable()){
	var varsound=sound_awakening*awakening+sound_sleep*!awakening
	audio_pause_sound(global.background_music)
	audio_play_sound(varsound,0,0)
	var varanimator = instance_create_depth(x,y,-1,animator)
	varanimator.struct=id
	}
	if(awakening){owner.nightmareStatusAilment.applied=0}
	turnsLeft=max(turnsLeft-1,0)
}

function scrFrozenStart(){
	if(choose(0,0,1)){unfreeze=0}
	scrStatusAilmentStandardStart()}}

    function scrStartParalyzedAnimation(){if(irandom(99)<33){scrStatusAilmentStandardStart()}}
	function scrConfusionImplementable(){with(owner) return  !asleep.applied and !frozen.applied and !paralyzed.symptomatic}
	function scrParalyzedImplementable(){with(owner) return !asleep-applied and !frozen.applied and !paralyzed.symptomatic}
	
	function ailmentStandardEnd(){
audio_resume_sound(global.background_music)
scrEffect()
}

function ailmentStandardEffect(){}


