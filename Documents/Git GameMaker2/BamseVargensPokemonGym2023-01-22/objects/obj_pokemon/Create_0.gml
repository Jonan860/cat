global.creationInjector=id
HP=1
alive=1
owner=noone
defence_bonus=0; attack_bonus=0; evasion_bonus=0; accuracy_bonus=0;
active=0
level=5
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
nightmare=constructNightmared()
statusAilmentList=ds_list_create()
ds_list_add(statusAilmentList,burned,poisoned,frozen,nightmare,leeched,asleep,paralyzed,confused)
movesList=ds_list_create()

spr_lick_frame = 0;
spr_lick_animation_speed = 0.3;


spr_thundershock_frame = 0;
spr_thundershock_animation_speed = 0.3;
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

getOpponent = function() {return owner.getOpponent().active_pokemon}

