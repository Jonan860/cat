/// @description Insert description here
// You can write your code in this editor
event_inherited()

with(owner){
			switch(global.phase){
		case PHASES.attackHit: move_towards_point(opponent.x+600,opponent.y+600,10) break;
		case PHASES.attackMiss: move_towards_point(room_width/2,opponent.y+600,10) break;
	}
}
