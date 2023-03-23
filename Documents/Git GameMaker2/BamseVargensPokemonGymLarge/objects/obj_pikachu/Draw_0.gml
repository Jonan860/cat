
event_inherited()
if(global.turn==TURNS.Amber and global.move=MOVES.thundershock){
if(global.phase=PHASES.attackHit){
draw_sprite(spr_thundershock,spr_thundershock_frame,opponent_x,opponent_y)
spr_thundershock_frame=sprite_get_speed(spr_thundershock)+spr_thundershock_frame % sprite_get_number(spr_thundershock)
}
if(global.phase=PHASES.attackMiss){
if(choose(1,0)==1){
draw_sprite(spr_thundershock,spr_thundershock_frame,opponent_x-500,opponent_y)
spr_thundershock_frame=spr_thundershock_frame+spr_thundershock_animation_speed % sprite_get_number(spr_thundershock)
}
else{
draw_sprite(spr_thundershock,spr_thundershock_frame,opponent_x,opponent_y-500)
spr_thundershock_frame=sprite_get_speed(spr_thundershock)+spr_thundershock_frame % sprite_get_number(spr_thundershock)
}
}
}

if(global.turn=TURNS.Amber and global.move=MOVES.thunder){
if(global.phase=PHASES.attackHit and audio_is_playing(sound_thunder)){
draw_sprite(spr_thunder,-1,opponent_x,opponent_y)
}
if(global.phase=PHASES.attackMiss and audio_is_playing(sound_thunder)){
draw_sprite(spr_thunder,-1,opponent_x-500,opponent_y)
}
}