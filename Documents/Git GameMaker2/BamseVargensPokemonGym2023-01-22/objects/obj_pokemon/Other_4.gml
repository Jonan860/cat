/// @description Insert description here
// You can write your code in this editor
if(id == global.amber.active_pokemon){
if(isBattleRoom(room) and global.phase != PHASES.defeated){
with(obj_move_button){instance_destroy()}
scr_create_move_buttons()
		}
}