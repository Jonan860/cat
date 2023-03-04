// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_espeon_ai() {
if(global.amber.active_pokemon.accuracy_bonus>-5 and sandAttack.pp>0){global.move=choose(MOVES.sandAttack,MOVES.sandAttack,MOVES.confusion)}
else{global.move=MOVES.confusion}
if(global.move=MOVES.sandAttack and global.phase!=PHASES.attack){sandAttack.scr_perform()}
if(global.move=MOVES.confusion and global.phase!=PHASES.attack){confusion.scr_perform()}
}
