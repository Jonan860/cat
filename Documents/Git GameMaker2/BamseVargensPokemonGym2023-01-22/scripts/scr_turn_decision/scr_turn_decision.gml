///returns enemy chose or amber choose phase
function scr_turn_decision() {
	global.phase=PHASES.choosing
	amber=global.amber
	if(amber.active_pokemon!=noone){
		var amberActionBar=global.amber.active_pokemon.action_bar
		var enemyActionBar=global.enemy.active_pokemon.action_bar
	
	var minimi=min(enemyActionBar,amberActionBar);
	global.enemy.active_pokemon.action_bar-=minimi
	global.amber.active_pokemon.action_bar-=minimi
	
	var zero=amberActionBar==0
	global.turn=zero*TURNS.Amber+!zero*TURNS.enemy
	}
	else{global.turn=TURNS.Amber}
}
