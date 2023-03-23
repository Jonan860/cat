
event_inherited()
if(global.move=MOVES.lick and active and audio_is_playing(sound_lick)){
draw_sprite(spr_lick,spr_lick_frame,match_y,match_y)
spr_lick_frame = (spr_lick_frame + sprite_get_speed(spr_lick_frame)) % sprite_get_number(spr_lick);
}