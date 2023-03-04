// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrUpdateExperience(){
with(obj_opponent){
if(HP<=0 and alive){
with(global.amber.active_pokemon){scr_gain_experience()}
active=0
alive=0
global.phase=PHASES.choosing
global.enemy.active=1
exit
}
}
}