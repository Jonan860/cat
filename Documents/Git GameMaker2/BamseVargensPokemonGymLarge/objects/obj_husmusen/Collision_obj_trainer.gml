if(!defeated){
if(room=jansson_husmus_gym){
speed=0
for (i=0; i<3; i+=1){
if(i==2){
lastroom_x=x; lastroom_y=y;
x=opponent_x; y=opponent_y;
scr_goto_room(room_husmusen)
global.enemy=self
global.turn=TURNS.enemy
global.phase=PHASES.choosing
}
}
}
}