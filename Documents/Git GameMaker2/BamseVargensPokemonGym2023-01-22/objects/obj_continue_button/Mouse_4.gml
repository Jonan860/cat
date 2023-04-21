/// @description Insert description here
// You can write your code in this editor

switch(room){
case room_husmusen:
if(global.Jansson.defeated){global.amber.moveable=1};
room_goto(jansson_husmus_gym); break;

case room_jansson:
if(global.Husmusen.defeated){global.amber.moveable=1}
room_goto(jansson_husmus_gym); break;

case room_teddy_match: 
if(global.phase==PHASES.defeated){room_goto(room_teddy_gym)
}else{room_goto(room_win)}; break;
}

global.phase=PHASES.world
