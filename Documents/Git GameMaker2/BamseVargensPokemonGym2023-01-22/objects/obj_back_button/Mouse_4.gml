
if(global.last_room=room_skalman){
global.phase=PHASES.world
global.amber.moveable=1
global.amber.visible=1
}
if(room=room_shop and global.last_room=room_inventory){
	global.phase=PHASES.world
global.amber.moveable=1
global.amber.visible=1
scr_goto_room(room_skalman)
}
else{scr_goto_room(global.last_room)}