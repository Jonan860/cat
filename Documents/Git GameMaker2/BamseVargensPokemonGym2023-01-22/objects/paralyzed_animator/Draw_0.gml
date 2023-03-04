/// @description Insert description here
// You can write your code in this editor
function paralyzedDraw(){
draw_sprite(spr_paralyzed,global.spr_paralyzed_frame,x,y)
global.spr_paralyzed_frame+=sprite_get_speed(spr_paralyzed) % sprite_get_number(spr_paralyzed)
} //observe


