// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function phaseAttack(){
return global.phase==PHASES.attack or global.phase==PHASES.attackHit or global.phase==PHASES.attackMiss
}