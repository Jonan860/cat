if(keyboard_check_pressed(ord("L"))){scr_load()}

with(obj_trainer){
if(object_index!=obj_amber){
switch(room){
case roomWorld: scrWorld()
case roomMatch: scrMatch()
}
}
else {
scrMovement()
scrDefeated()
scrEnterBuilding()
scrSwitchPokemon()
scrSetMovable()
scrPerformStatusAilment()
}
}

if(phaseAttack()){
	switch(global.turn){
case TURNS.Amber: var poke=global.amber.active_pokemon
case TURNS.enemy: var poke= global.enemy.active_pokemon
poke.scrMoveStart()
}
}



scrUpdateExperience()




