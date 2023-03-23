
function scrMoveConstructor(
obj_animator_=noone,sound_=sound_growl,button_=noone,ppMax_ =0,scr_start_,scr_effect_,scr_end_,translationX=300,translationY=300,
damage_=0,critChance_=7.5,elementaltype_=ELEMENTALTYPES.normal,accuracy_=1,damageParadigm_=DAMAGEPARADIGMS.normal){
	obj_animator =obj_animator_
	ppMax=ppMax_
	pp=ppMax_
	ppSaved=ppMax_
	button=button_
	sound=sound_
	damage=damage_
	critChance=critChance_
	elementaltype=elementaltype_
	accuracy=accuracy_
	scrEffect =method(undefined,scr_effect_)
	scr_start = method(undefined,scr_start_)
	scr_end = method(undefined,scr_end_)
	checkForHit = method(undefined,check_for_hit)
	damageParadigm=damageParadigm_
	getTarget = function(){
	if(owner.owner.name="Amber"){return global.enemy.active_pokemon}
	else return global.amber.active_pokemon
	}
}

global.vine_whip_struct=scrMoveConstructor(obj_vine_whip_animation,sound_vine_whip,obj_wine_whip_button,,scr_perform_projectile)



function scrEffectSuperFang(){
	var opponent= getTarget()
	with(owner){
	move_towards_point(opponent.x,opponent.y,4)
	alarm[2]=room_speed/2
	}
	opponent.active_pokemon.HP-=max(opponent.active_pokemon.HP/2,1)
}

global.super_fang_struct=scrMoveConstructor(obj_super_fang_animation,sound_scratch,,2,scr_perform_instant, scrEffectSuperFang,,,50,,ELEMENTALTYPES.normal,)

global.bubble_struct=scrMoveConstructor(obj_bubble_animation,sound_bubble,obj_bubble_button,
,,,,,20,,ELEMENTALTYPES.water,)

global.ember_struct=scrMoveConstructor(obj_ember_animation,sound_ember,obj_ember_button,,,
,,,20,,ELEMENTALTYPES.fire,)

global.quickAttack_struct=scrMoveConstructor(,sound_hit,,,,
,,,10,,)

global.thunder_struct=scrMoveConstructor(
obj_thunder_attack_animation,sound_thunder,obj_thunder_button,1,,
,,,40,,ELEMENTALTYPES.electric,1)

global.tailWhip_struct=scrMoveConstructor(
obj_tail_whip,sound_tail_whip,obj_tail_whip,5,,,
,,,,ELEMENTALTYPES.normal,)
global.tailWhip.count=0

global.growl_struct=scrMoveConstructor(obj_growl_animation,sound_growl, obj_growl_button,5,
scr_perform_instant,)

with(global.growl_struct){
function scr_perform(){
}

}

global.psy_cutter_struct=scrMoveConstructor(
obj_psy_cutter_animation,sound_psy_cutter,obj_psy_cutter_button,,,,,,40,)
global.leer_struct=scrMoveConstructor(
obj_leer_animation,obj_leer_button,5)
global.rock_throw_struct=scrMoveConstructor(
obj_rock_throw_animation,sound_rock_throw,obj_rock_throw_button,,,,,,20,,ELEMENTALTYPES.ground,)
global.thunder_shock_struct=scrMoveConstructor(
,sound_thundershock, obj_thundershock_button,,,,,,20,,ELEMENTALTYPES.electric,)
global.defence_curl_struct=scrMoveConstructor(
obj_defence_curl_animation,sound_defence_curl,obj_defence_curl_button,5,,,,,,,ELEMENTALTYPES.normal,)
global.rollout_struct=scrMoveConstructor(
,,,,,,,,10,,ELEMENTALTYPES.rock,)
global.charm_struct=scrMoveConstructor
(,,,2,,,,,,,ELEMENTALTYPES.fairy,)
global.scratch_struct=scrMoveConstructor(
obj_scratch_animation,sound_scratch,,,scratchPerform,,,,20,,,)
global.dreameater_struct=scrMoveConstructor(
obj_dreameater,,,,,,,,,,ELEMENTALTYPES.ghost,)
global.hypnosis_struct=scrMoveConstructor(
obj_hypnosis_animation,,,3,,,,,,,ELEMENTALTYPES.psychic,2/3)
global.nightmare_struct=scrMoveConstructor(,,)
global.amnesia_struct=scrMoveConstructor(
obj_amnesia,,2)
global.sing_struct=scrMoveConstructor(
,sound_sing,,2,,,,)
global.tackle_struct=scrMoveConstructor(
,,,,,,,)
global.lick_struct=scrMoveConstructor(
,sound_lick,,,,,,)
global.rest_struct=scrMoveConstructor(
,,,,,,,)

function scr_confusion_effect(){
global.phase=PHASES.attack
global.move=MOVES.confusion
	global.amber.active_pokemon.HP-=damage_calculate(global.amber.active_pokemon)
	if(random(100) < 32){
	make_confused(global.amber.active_pokemon)
	scr_turn_decision()
	}
}
global.confusion_struct=scrMoveConstructor(obj_confusion,sound_growl,,,scr_perform_instant,scr_confusion_effect,match_x-opponent_x,match_y-opponent_y)
global.sandAttackStruct=scrMoveConstructor(obj_sand_attack,,5)
with(global.sandAttackStruct){
	function scr_effect(){
	var opponent =scr_get_opponent(owner.owner)
	switch(global.phase){
	case PHASES.attackHit:
	opponent.active_pokemon.accuracy_bonus=max(opponent.active_pokemon.accuracy_bonus-1,-5)
	break;
	case PHASES.attackMiss:
	break;
	}
	}
}



function scr_perform_instant(){
pp-=sign(ppMax)
owner.action_bar=owner.max_action_bar
opponent=scr_get_opponent(owner.owner)
var signTranslation=sign(point_direction(owner.x,owner.y,opponent.x,opponent.y)-180)
audio_play_sound(sound,0,0)
var object=instance_create_depth(owner.x+signTranslation*translationX,owner.y+signTranslation*translationY,0,obj_projectile)
if(owner.owner.obj_index!=obj_amber){image_angle+=180}
scr_effect()
}





function scr_perform_projectile(){
pp-=ppCosts
owner.action_bar=owner.max_action_bar
opponent=scr_get_opponent(owner.owner)
var signTranslation=sign(point_direction(owner.x,owner.y,opponent.x,opponent.y)-180)
audio_play_sound(sound,0,0)
var object=instance_create_depth(owner.x+signTranslation*300,owner.y+signTranslation*300,0,obj_projectile)
if(owner.owner.obj_index!=obj_amber){image_angle+=180}
}

function sandAttackPerform(){
	pp-=1
	var target=instance_find(obj_amber,0).active_pokemon
	active_pokemon.action_bar=active_pokemon.max_action_bar
	
	accuracy_bonus=max(target.accuracy_bonus-1,-5)
	audio_play_sound(sound_growl,0,0)     
	var sand_attack=instance_create_depth(owner.x+300,owner.y+300,0,obj_sand_attack_animation)
	with(sand_attack){image_angle+=180}
	global.phase=PHASES.attack
	}

function scratchPerform(){
	active_pokemon.action_bar=active_pokemon.max_action_bar
	var scratch=instance_create_depth(match_x,match_y,0,obj_scratch_animation)
	global.amber.active_pokemon.HP-=damage_calculate(global.amber.active_pokemon)
	global.phase=PHASES.attack
	}
	
function tailWhipPerform(){
	var target=getTarget()
	with(owner){
action_bar=max_action_bar
	target.defence_bonus=max(target.defence_bonus-1,-5)
	audio_play_sound(sound,0,0)
	owner.image_xscale*=-1
	count=3
	owner.alarm[1]=room_speed/2
	global.phase=PHASES.attack
	global.move=noone
	}
}
	
	function quickAttackPerform(){
	var target=global.amber.active_pokemon
	active_pokemon.action_bar+=active_pokemon.max_action_bar/2
	with(owner){
	move_towards_point(match_x,match_y,4)
	alarm[2]=room_speed
	}
	target.HP-=damage_calculate(target)
	global.phase=PHASES.attack
	global.move=noone
	}
	
function charmStart(){
	target.attack_bonus=max(-5,target.attack_bonus-2)
	pp-=1
	global.move=MOVES.charm
	audio_play_sound(sound_charm,1,0)
	audio_pause_sound(global.background_music)
}

function thunderShockStart(){
	var target=get_target()
	
	if(check_for_hit(target)){
			owner.depth=-1
			target.HP-=damage_calculate(target)
			audio_play_sound(sound_thundershock,1,0)
		}
}

function thunderStart(){
pp-=1
global.move=MOVES.thunder
if(thunder.checkForHit(global.amber.active_pokemon)){
owner.depth=-1
global.phase=PHASES.attackHit
audio_play_sound(sound_thunder,1,0)
}
else{
global.phase=PHASES.attackMiss
audio_play_sound(sound_thunder,1,0)
}
}

function thunderEnd(){
audio_resume_sound(global.background_music)
var thunder=instance_create_depth(0,0,0,obj_thunder_attack_animation)
var riddle=instance_find(obj_riddle_bar,0)
var number_correct_answer=riddle.number_correct_answer
global.enemy.active_pokemon.HP-=damage_calculate(global.enemy.active_pokemon)
depth=0
with(thunder){instance_destroy()}
	
with(riddle){instance_destroy()}
	
scr_turn_decision()
}

function rolloutEnd(){
if(global.phase==PHASES.attackHit){
global.amber.active_pokemon.HP-=rollout.damage_calculate(global.amber.active_pokemon)
if(rollout.bonus<32){rollout.bonus*=2}else{rollout.bonus=1}
owner.x=opponent_x
owner.y=opponent_y
speed=0
}


if(global.phase==PHASES.attackMiss){
rollout.bonus=1	
owner.x=opponent_x
owner.y=opponent_y
speed=0
}
scr_turn_decision()
}

function tackleEnd(){
owner.x=opponent_x
owner.y=opponent_y
speed=0
global.amber.active_pokemon.HP-=tackle.damage_calculate(global.amber.active_pokemon)
scr_turn_decision()
}

function lickEnd(){
global.amber.active_pokemon.HP-=lick.damage_calculate(global.amber.active_pokemon)
scr_turn_decision()
}

function thunderEnd(){
	global.amber.active_pokemon.HP-=thunder.damage_calculate(global.amber.active_pokemon)
	depth=0
scr_turn_decision()
}

function dreamEaterAnimation(){
	var closest=instance_nearest(global.amber.active_pokemon.x,global.amber.active_pokemon.y,
obj_dreameater_animation)
if(global.amber.active_pokemon.x-closest.x>(global.amber.x-global.enemy.x)/20){
instance_create_depth(global.amber.active_pokemon.x,
global.amber.active_pokemon.y-global.amber.active_pokemon.sprite_height/4+32*random(1),0,
obj_dreameater_animation)}
}

function dreamEaterStart(){
		instance_create_depth(global.amber.active_pokemon.x,
	global.amber.active_pokemon.y-global.amber.active_pokemon.sprite_height/4+32*random(1),0,
	obj_dreameater_animation)
}

function amnesiaStart() {
pp-=1
global.move=MOVES.amnesia
	var amnesia=instance_create_depth(x,y-sprite_height/2,0,obj_amnesia_animation)
audio_play_sound(sound_growl,0,0)
}

function amnesiaEnd(){
	with(owner){
	defence_bonus=(min(defence_bonus+1,5))
	attack_bonus=(min(attack_bonus+1,5))
	}
}

function scrSingStart(){
global.move=MOVES.sing
	pp-=1
	if(checkForHit(target)) {
	global.phase=PHASES.attackHit
	audio_pause_all()
	audio_play_sound(sound_sing,0,0)
	}
	else{
	global.phase=PHASES.attackMiss
	audio_play_sound(sound_cow,0,0)
	}
		for(i=0;i<12;i+=1) instance_create_depth(room_width/2+room_width/4*cos(pi/6*i), room_height/2+room_height/4*sin(pi/6*i),0,obj_note)
	
}

function scrTackleStart(){
	with(owner){
	move_towards_point(match_x,match_y,4)
	alarm[2]=room_speed/2
	}
	global.phase=PHASES.attack
	global.move=MOVES.tackle}
	
function scrDefenceCurlStart(){
		global.move=MOVES.defenceCurl
	audio_play_sound(sound_defence_curl,0,0)
	global.phase=PHASES.attack
	}
	
function scrDefenceCurlEffect(){
owner.defence_bonus=min(owner.defence_bonus+1,5)
}
	
	
function scrDefenceCurlEnd(){
if(active and global.phase==PHASES.attack and global.move=MOVES.defenceCurl and !audio_is_playing(sound_defence_curl)){
audio_resume_sound(global.background_music)
scr_turn_decision()
}
}

	
function scrRolloutStart(){
			var target=getTarget()
		var traff=checkForHit(target)
		
		if(traff) global.phase=PHASES.attackHit
		else global.phase=PHASES.attackMiss	
	with(owner){
			switch(global.phase){
		case PHASES.attackHit: move_towards_point(match_x+600,match_y+600,10) break;
		case PHASES.attackMiss: move_towards_point(room_width/2,match_y+600,10) break;
	}
}}


function scrHypnosisStart(){
pp-=1
var target = global.amber.active_pokemon
	global.move=MOVES.hypnosis
	if(checkForHit(target)){global.phase=PHASES.attackHit}
	else global.phase=PHASES.attackMiss
}

function scrHypnosisEffect(){if(checkForHit(getTarget())) scr_put_to_sleep(getTarget())}



function scrLickStart(){
audio_play_sound(sound_lick,0,0)
	global.move=MOVES.lick{
	if(irandom(100)<33){global.amber.active_pokemon.paralyzed=1}
	}
}


function scrPsyCutterStart(){
global.phase=PHASES.attackHit
	var varSign=sign(room_width/2-x)
	var target= getTarget()
	var psy_cutter=instance_create_depth(x+varSign*owner.sprite_width/2,y+varSign*owner.sprite_height/2,0,obj_psy_cutter_animation)
	with(psy_cutter){
	miss=!checkForHit(target)
	move_towards_point(target.x+varSign*100,target.y+varSign*100,5)
	}
	
}


function scrGrowlStart(){
	var	target=getTarget()
	var startSign=sign(point_direction(owner.x,owner.y,target.x,target.y)-180)

target.attack_bonus=max(target.attack_bonus-1,-5)
audio_play_sound(sound_growl,0,0)
var growl=instance_create_depth(x+startSign*300,y+startSign*300,0,obj_animator)


if(global.phase=PHASES.attackMiss){

var growl=instance_create_depth(x+startSign*300,y+startSign*300,0,obj_animator)
}
}


function scrThunderStart(){
	var target=getTarget()
	var animator=instance_create_depth(x-150,y-150,0,obj_animator)
if(global.move==MOVES.thunder and !audio_is_playing(sound_na_na_na_thunder) and !audio_is_playing(sound_thunder)){
	if(checkForHit(target)){global.phase=PHASES.attackHit}
else{global.phase=PHASES.attackMiss}

audio_play_sound(sound_thunder,0,0)
}}

function scrVineWhipStart(){
	var target=getTarget()
var animator=instance_create_depth(x-150,y-150,0,obj_animator)
with(animator){
miss=!checkForHit()
move_towards_point(opponent_x-100*!miss+300*(miss),opponent_y-100,5)
}
}

function scrEmberStart(){
var ember=instance_create_depth(x-200,y-120,0,obj_ember_animation)
with(ember){miss=!checkForHit()}
}





function scrRockThrowStart(){
	var target=scrGetTarget()
	if(instance_find(obj_animator,0)=noone){
var rock_throw=instance_create_depth(owner.x-200,owner.y-120,0,obj_animator)

with(rock_throw){
miss=!other.checkForHit()
move_towards_point(target.x-100*!miss-800*miss,target.y-400,9)
}

}
}

function scrLeerStart(){
	var target=getTarget()
	var miss=!checkForHit()
	global.phase=PHASES.attackMiss*miss+PHASES.attackHit*!miss
target.defence_bonus=max(target.defence_bonus-1,-5)
audio_play_sound(sound_leer,0,0)
var leer=instance_create_depth(x-leer.sprite_width,y-leer.sprite_height,0,obj_animator)
}


function scrBubbleStart(){
	var target=getTarget()
	var miss=!checkForHit()
global.phase=PHASES.attackMiss*miss+PHASES.attackHit*!miss
var bubble=instance_create_depth(x-200,y-150,0,obj_animator)
with(bubble){
image_xscale=0.8
image_yscale=0.8
move_towards_point(target.x-100*!miss-800*miss,target.y-400,9)
}
}












