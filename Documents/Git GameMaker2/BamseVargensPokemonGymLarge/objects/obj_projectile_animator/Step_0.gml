switch(global.phase){
	
case PHASES.attackHit:	switch(global.turn){
	case TURNS.enemy: move_towards_point(match_x+100,match_y+100,spd);
	case TURNS.amber: move_towards_point(opponent_x-100,opponent_y-100,spd);
};

case PHASES.attackMiss: switch(global.turn){
	case TURNS.enemy: move_towards_point(match_x+i*10000,match_y+j*1000,spd);
	case TURNS.Amber: move_towards_point(opponent_x-10000*i,opponent_y-j*1000,spd);
}
}

var opponent=scr_get_opponent(owner.owner.owner)
if(position_meeting(x,y,opponent.active_pokemon))  {
	var targetpokemon = opponent.active_pokemon
if(global.phase==PHASES.attackHit){
	with(owner){targetpokemon.HP -= damage_calculate(moveStruct,targetpokemon)}
	
if(other2.HP<=0) global.phase=PHASES.choosing
else scr_turn_decision()

audio_stop_sound(sound)
instance_destroy()
}
}
