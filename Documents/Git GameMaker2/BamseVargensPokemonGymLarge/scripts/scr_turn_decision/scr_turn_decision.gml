///returns enemy chose or amber choose phase
function scr_turn_decision() {
	global.phase=PHASES.choosing
	amber=instance_find(obj_amber,0)
	if(amber.active_pokemon!=noone){
		var amberActionBar=global.amber.active_pokemon.action_bar
		var enemyActionBar=global.enemy.active_pokemon.action_bar
	
	var minimi=min(enemyActionBar,amberActionBar);
	enemyActionBar-=minimi
	amberActionBar-=minimi
	
	var zero=amberActionBar==0
	global.turn=zero*TURNS.Amber+!zero*global.turn=TURNS.enemy
	}
	else{global.turn=TURNS.Amber}
}
