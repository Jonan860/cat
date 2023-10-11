var i
win=1
Xx=x
Yy=y
for (i = 0; i < 1000; i += 1)
{if move
{
Rx=choose(1,0,-1); 
Ry=choose(1,0,-1); 
if !(Rx==0 && Ry==0)
if instance_position(x+64*Rx,y+64*Ry,obj_tile)==noone
{lose=1;}
else if instance_position(x+64*Rx,y+64*Ry,obj_tile).block==0
{x+=64*Rx
y+=64*Ry
move=0;
win=0}
}}


var m
var n 
for (n = 0; n < 3; n += 1)
{
for (m = 0; m < 3; m += 1)
{
if !(n-1==0 && m-1==0)
{if instance_position(x+(n-1)*64,y+64*(m-1),obj_tile)!=noone
{win=win && instance_position(x+(n-1)*64,y+64*(m-1),obj_tile).block!=0;
}
}
}
}


