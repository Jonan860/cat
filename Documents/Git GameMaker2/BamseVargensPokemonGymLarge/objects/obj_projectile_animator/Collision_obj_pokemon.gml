if(global.phase=PHASES.attackHit){
if(global.turn==TURNS.Amber and other.owner=global.enemy and global.enemy.active_pokemon=other){
other.HP -= damage_calculate(moveStruct,other)
if(other.HP<=0){global.phase=PHASES.choosing}
else{scr_turn_decision()}

audio_stop_sound(sound)
instance_destroy()
}
else if(global.turn==TURNS.enemy and other.owner=global.amber and global.amber.active_pokemon=other){
other.HP -= damage_calculate(moveStruct,other)
if(other.HP<=0){global.phase=PHASES.choosing}
else{scr_turn_decision()}

instance_destroy()
audio_stop_sound(sound)
}
}


