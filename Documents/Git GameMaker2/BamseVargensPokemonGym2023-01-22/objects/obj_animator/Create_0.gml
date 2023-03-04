/// @description Insert description here
// You can write your code in this editor

miss=global.phase==PHASES.attackMiss

var isAmbersTurn=global.turn==TURNS.Amber
owner=real(global.amber.active_pokemon)*isAmbersTurn+real(global.enemy.active_pokemon)*!isAmbersTurn
opponent=real(global.enemy.active_pokemon)*isAmbersTurn+real(global.amber.active_pokemon)*!isAmbersTurn

if(!isAmbersTurn){image_angle+=180}
Xtranslation=0; Ytranslation=0;

struct=noone

