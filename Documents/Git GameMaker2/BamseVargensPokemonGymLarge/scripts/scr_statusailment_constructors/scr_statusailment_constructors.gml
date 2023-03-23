
 function scrStatusAilmentConstructor(sound_,implementationPhase_,text_,scrStartAnimation_, scrEndAnimation_,scrEffect_,draw_)  constructor {
applied = 0
turnsleft=0
sound = sound_
text=text_
implementationPhase = implementationPhase_
scrStartAnimation = method(undefined,scrStartAnimation_)
scrEndAnimation = method(undefined,scrEndAnimation_)
scrEffect=method(undefined,scrEffect_)
draw=method(undefined,draw_)
scrReset = function(){
applied=0
turnsLeft=0
}
}

function scrStartConfusionAnimation (){
	turnsLeft-=1
	with(owner){
		if(!asleep.applied and !!awakening.applied and !frozen.applied and !paralyzed.symptomatic)	{
	global.phase=implementationPhase
	audio_play_sound(sound,0,0)
	}
	}
}
function scr_confused() {owner.HP-=damage_calculate(self,self)}

global.confusion = scrStatusAilmentConstructor(sound_confused,PHASES.confused,scrStartConfusionAnimation,cnf,scr_confused)


function scrStartSleepAnimation(){
	turnsLeft-=1
	if(turnsLeft=0){
	asleep=0
	audio_play_sound(sound_awakening,0,0)
	global.phase=PHASES.awakening
	awakening=1
	owner.nightmareStatusAilment.applied=0
	}
	else{
		global.phase=PHASES.asleep
		audio_pause_sound(global.background_music)
		audio_play_sound(sound_sleep,0,0)
	}
}
global.asleepStatusAilment=scrStatusAilmentConstructor(sound_sleep,PHASES.asleep,"slp",scrStartSleepAnimation,,,)


function awakeningDraw() {draw_sprite(spr_uttropstecken,-1,x+sprite_width/2,y-sprite_height/2)}

global.awakeningStatusAilment = scrStatusAilmentConstructor(sound_awakening,PHASES.awakening,"",,,,awakeningDraw)

function scrStartAnimationimplementation(){global.phase=implementationPhase}

global.burnedStatusAilment= scrStatusAilmentConstructor(noone,PHASES.burned,"brn",scrStartAnimationimplementation,,,)


function scrStartFrozenAnimation(){
	if(choose(0,0,1)){
	applied=0
	global.phase=PHASES.unfreezed
	}
}
global.frozen=scrStatusAilmentConstructor(noone,PHASES.frozen,"frz",scrStartFrozenAnimation,,)

global.poisonedStatusAilment=scrStatusAilmentConstructor(noone,PHASES.poisoned,"psn",scrStartAnimationimplementation,,)

function scrStartParalyzedAnimation(){
	if(irandom(99)<33){
			audio_play_sound(sound_paralyzed,0,0)
	global.phase=implementationPhase
	symptomatic = 1 
		}
}

function paralyzedDraw(){
draw_sprite(spr_paralyzed,global.spr_paralyzed_frame,x,y)
global.spr_paralyzed_frame+=sprite_get_speed(spr_paralyzed) % sprite_get_number(spr_paralyzed)
}

global.paralysisStatusAilment=scrStatusAilmentConstructor(sound_paralyzed,PHASES.paralyzed,"par", scrStartParalyzedAnimation,,,paralyzedDraw)

global.leechedStatusAilment = scrStatusAilmentConstructor(noone,PHASES.leeched,"lch",scrStartAnimationimplementation,,)


with(global.amber.active_pokemon){
	audio_pause_sound(global.background_music)
	audio_play_sound(sound_nightmare,0,0)
	global.phase="Amber nightmare 0"
	}
	
function scrStartNightmareAnimation(){
	audio_play_sound(sound_nightmare,0,0)
	audio_pause_sound(global.background_music)
	global.phase=PHASES.nightmared
}

function nightmaredDraw() {
draw_sprite(spr_nightmare,global.spr_nightmare_frame,x,y)
global.spr_nightmare_frame+= sprite_get_speed(spr_nightmare) % sprite_get_number(spr_nightmare)
}

global.nightmareStatusAilment = scrStatusAilmentConstructor(sound_nightmare,PHASES.nightmared,"",scrStartNightmareAnimation,,,nightmaredDraw)

function scr_status_ailment_effect_check() {

///gör en lista i obj_pokemon med statusAilments och använd "här"

	with(active_pokemon){
	if(awakening or asleep>0 or frozen=1 or paralyzed_round=1 or confused_round=1){
	action_bar=max_action_bar	
	scr_turn_decision()
	}
	}

}




